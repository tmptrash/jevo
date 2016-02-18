#
# TODO: add tests:
# TODO: - server start and stop without run() call
# TODO: - server+client start, server stop, send request from client
# TODO: - server+client start, client stop, create other client
# TODO: - server start, create two clients
# TODO: - server start, create two clients, send two messages from two clients
# TODO: - server start, client start, send big data in both directions
# TODO: - client start without server
# TODO: - start two servers on the same ip/port
# TODO: - start two servers on same port/ip and one client, send data to server, should work only first one
# TODO: - test pooling
# TODO: - test pooling from many clients
# TODO: - test sending request after client stop
# TODO: - test servers recriation on the same ip/post. port shouldn't be used
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

  facts("Tests server creation and stop without run") do
    con = Server.create(IP, PORT)
    Server.stop(con)
  end
  facts("Tests server creation and start") do
    con = Server.create(IP, PORT)
    Server.run(con)
    Server.stop(con)
  end

  facts("Tests server receiving command") do
    #
    # server and client creation
    #
    local answer::Command        = Command(0, Array{Any}())
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)
    local i::Int                 = 0

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->answer = Command(cmd.fn, deepcopy(cmd.args)))
    Server.run(scon)
    Client.request(ccon, 0, 1) # function - 0, parameter - 1
    #
    # This line is very important. yield() runs the interconnection 
    # loop between client and server.
    #
    Timer((t)->(yield(); if (i+=1) > TIMEOUT || answer !== nothing close(t) end), 0, 1)
    @fact i <= TIMEOUT    --> true
    @fact answer.fn       --> 0
    @fact answer.args[1]  --> 1
    yield()

    Client.stop(ccon)
    Server.stop(scon)
  end
end