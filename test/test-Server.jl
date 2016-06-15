# TODO: two separate servers should work okay
module TestServer
  using FactCheck
  using Connection
  using Server
  using Client
  using Config
  using Event
  include("Helper.jl")

  facts("Tests server creation and stop without run") do
    con = Server.create(IP, PORT)
    Server.stop(con)
  end
  facts("Tests two servers creation and stop without run") do
    con1 = Server.create(IP, PORT)
    con2 = Server.create(IP, PORT + 1)
    Server.stop(con2)
    Server.stop(con1)
  end
  facts("Tests two servers creation and stop one without run") do
    con1 = Server.create(IP, PORT)
    con2 = Server.create(IP, PORT + 1)
    Server.stop(con2)
    @fact Server.isOk(con1) --> true
    Server.stop(con1)
  end
  facts("Tests server creation and start") do
    con = Server.create(IP, PORT)
    Server.run(con)
    Server.stop(con)
  end
  facts("Tests two servers on the same port creation") do
    local answer::Command = Command(0, [])
    msg  = "Hello"
    con1 = Server.create(IP, PORT)
    con2 = Server.create(IP, PORT)
    con3 = Client.create(IP, PORT)
    Event.on(con1.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))

    @fact Server.isOk(con1) --> true
    @fact Server.isOk(con2) --> false

    Server.run(con1)
    Server.run(con2)
    Client.request(con3, 1, msg)
    wait(()->answer.fn !== 0)

    @fact answer.fn      --> 1
    @fact answer.args[1] --> msg
    println("1")
    Client.stop(con3)
    println("2")
    Server.stop(con2)
    println("3")
    Server.stop(con1)
    println("4")
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
    local answer::Command        = Command(0, Array{Any,1}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)
    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
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

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->push!(answer, Command(cmd.fn, deepcopy(cmd.args))))
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
    local answer::Command        = Command(0, Array{Any,1}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
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
    local answer::Command        = Command(0, Array{Any,1}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
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
    local answer::Command        = Command(0, Array{Any,1}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)
    local data::Array{Int, 1}    = zeros(Int, 1000000)

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
    Server.run(scon)
    Client.request(ccon, 1, data)
    wait(()->answer.fn !== 0)

    @fact answer.fn --> 1
    @fact answer.args[1] == data --> true

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests client without server creation") do
    con = Client.create(IP, PORT)
    @fact Client.request(con, 1, 10) --> false
    Client.stop(con)
  end
  facts("Tests pooling") do
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)
    local result::Int            = 0

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->result += cmd.args[1])
    Server.run(scon)
    Client.request(ccon, 1, 1)
    wait(()->result !== 0)
    Client.request(ccon, 1, 2)
    wait(()->result > 1)

    Client.request(ccon, 1, 3)
    Client.request(ccon, 1, 4)
    wait(()->result > 5)
    wait(()->result > 9)

    @fact result --> 10

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests pooling from many clients") do
    local scon::ServerConnection  = Server.create(IP, PORT)
    local ccon1::ClientConnection = Client.create(IP, PORT)
    local ccon2::ClientConnection = Client.create(IP, PORT)
    local ccon3::ClientConnection = Client.create(IP, PORT)
    local ccon4::ClientConnection = Client.create(IP, PORT)
    local ccon5::ClientConnection = Client.create(IP, PORT)
    local result::Int             = 0

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->result += cmd.args[1])
    Server.run(scon)
    Client.request(ccon1, 1, 1)
    wait(()->result > 0)
    Client.request(ccon2, 1, 2)
    wait(()->result > 2)
    Client.request(ccon3, 1, 3)
    wait(()->result > 5)
    Client.request(ccon4, 1, 1)
    wait(()->result > 6)
    Client.request(ccon5, 1, 3)
    wait(()->result > 9)

    @fact result --> 10

    result = 0
    Client.request(ccon3, 1, 3)
    Client.request(ccon5, 1, 4)
    Client.request(ccon1, 1, 2)
    Client.request(ccon4, 1, 1)
    Client.request(ccon2, 1, 1)
    wait(()->result > 10)

    @fact result --> 11

    Client.stop(ccon5)
    Client.stop(ccon4)
    Client.stop(ccon3)
    Client.stop(ccon2)
    Client.stop(ccon1)
    Server.stop(scon)
  end
  facts("Tests rending a request after client has stopped") do
    local result::Int = 0
    local res::Bool
    scon = Server.create(IP, PORT)
    ccon = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (sock, cmd, ans)->result = cmd.args[1])
    Server.run(scon)
    Client.stop(ccon)
    res = Client.request(ccon, 1, 10)

    @fact res    --> false
    @fact result --> 0

    Server.stop(scon)
  end
end
