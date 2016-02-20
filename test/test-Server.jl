#
# TODO: add tests:
# TODO: - server start, client start, send big data in both directions
# TODO: - client start without server
# TODO: - start two servers on same port/ip and one client, send data to server, should work only first one
# TODO: - test pooling
# TODO: - test pooling from many clients
# TODO: - test sending request after client stop
#
module TestServer
  using FactCheck
  using Connection
  using Server
  using Client
  using Config
  using Event

  const IP      = ip"127.0.0.1"
  const PORT    = Config.val(:CONNECTION_SERVER_PORT)
  const TIMEOUT = 30

  #
  # Waits for timeout or function fn() to return true
  #
  function wait(fn::Function)
    i = 0
    t = Timer((t)->(yield(); if (i+=1) > TIMEOUT || fn() close(t) end), 0, 1)
    while isopen(t) yield() end
  end

  facts("Tests server creation and start") do
    con = Server.create(IP, PORT)
    Server.run(con)
    Server.stop(con)
  end
  facts("Tests server creation and stop without run") do
    con = Server.create(IP, PORT)
    Server.stop(con)
  end
  facts("Tests two servers on the same port creation") do
    con1 = Server.create(IP, PORT)
    con2 = Server.create(IP, PORT)

    @fact Server.isOk(con1) --> true
    @fact Server.isOk(con2) --> false

    Server.stop(con2)
    Server.stop(con1)
  end
  facts("Tests stopping the server and create again") do
    con = Server.create(IP, PORT)
    @fact Server.isOk(con) --> true
    Server.stop(con)

    con = Server.create(IP, PORT)
    @fact Server.isOk(con) --> true
    Server.stop(con)
  end
  facts("Tests server receiving command") do
    #
    # server and client creation
    #
    local answer::Command        = Command(0, Array{Any}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
    Server.run(scon)
    Client.request(ccon, 1, 10) # function - 1, parameter - 10
    wait(()->answer.fn !== 0)
    @fact answer.fn      --> 1
    @fact answer.args[1] --> 10

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests server receiving commands from two clients") do
    local answer::Array{Command,1} = Command[]
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon1::ClientConnection = Client.create(IP, PORT)
    local ccon2::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->push!(answer, Command(cmd.fn, deepcopy(cmd.args))))
    Server.run(scon)
    Client.request(ccon1, 1, 10) # function - 1, parameter - 10
    Client.request(ccon2, 2, 20) # function - 2, parameter - 20
    #
    # This line is very important. yield() runs the interconnection 
    # loop between client and server.
    #
    wait(()->length(answer) > 0)
    @fact length(answer) --> 2
    @fact (answer[1].fn === 1 || answer[1].fn === 2) --> true
    @fact (answer[1].args[1] === 10 || answer[1].args[1] === 20) --> true
    @fact (answer[2].fn === 1 || answer[2].fn === 2) --> true
    @fact (answer[2].args[1] === 10 || answer[2].args[1] === 20) --> true

    Client.stop(ccon2)
    Client.stop(ccon1)
    Server.stop(scon)
  end
  facts("Tests sending the message to stopped server") do
    local answer::Command        = Command(0, Array{Any}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
    Server.run(scon)
    Client.request(ccon, 1, 10) # function - 1, parameter - 10
    Server.stop(scon)
    Client.request(ccon, 2, 20) # function - 2, parameter - 20

    wait(()->!Server.isOk(scon))
    @fact answer.fn      --> 1
    @fact answer.args[1] --> 10

    Client.stop(ccon)
  end
  facts("Tests client recreation and send a message") do
    local answer::Command        = Command(0, Array{Any}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
    Server.run(scon)
    Client.request(ccon, 1, 10)
    Client.stop(ccon)
    ccon = Client.create(IP, PORT)
    Client.request(ccon, 2, 20)
    wait(()->answer.fn === 2)

    @fact answer.fn      --> 2
    @fact answer.args[1] --> 20

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests big data send") do
    local answer::Command        = Command(0, Array{Any}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)
    local i::Int                 = 0
    local data::Array{Int, 1}    = zeros(Int, 100000)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
    Server.run(scon)
    Client.request(ccon, 1, data)
    wait(()->answer.fn !== 0)

    @fact answer.fn --> 1
    @fact answer.args[1] == data --> true

    Client.stop(ccon)
    Server.stop(scon)
  end
end