#
# TODO: add tests:
# TODO: - send huge data
# TODO: - two clients for same server should work ok
# TODO: - two clients for different servers should work ok
# TODO: - create two servers. stop first. second should work
#
module TestClient
  using FactCheck
  using Connection
  using Server
  using Client
  using Config
  using Event
  include("Helper.jl")

  facts("Tests sending of simple command") do
    answer = 0
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_ANSWER, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)
    Client.request(ccon, 1, 10) # function - 1, parameter - 10
    wait(()->answer !== 0)

    @fact answer.fn      --> 1
    @fact answer.args[1] --> 10

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests sending many commands") do
    answer = 0
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_ANSWER, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)
    Client.request(ccon, 1, 10)
    wait(()->answer !== 0)
    @fact answer.fn      --> 1
    @fact answer.args[1] --> 10

    Client.request(ccon, 2, 20)
    wait(()->answer.fn === 2)
    @fact answer.fn      --> 2
    @fact answer.args[1] --> 20

    Client.request(ccon, 3, "hello")
    wait(()->answer.fn === 3)
    @fact answer.fn      --> 3
    @fact answer.args[1] --> "hello"

    Client.request(ccon, 4, 44)
    wait(()->answer.fn === 4)
    @fact answer.fn      --> 4
    @fact answer.args[1] --> 44

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests pooling") do
    answer = Connection.Command(0, [])
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_ANSWER, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)

    for i=1:10
      Client.request(ccon, i, i * 10)
      wait(()->answer.fn === i)
      @fact answer.fn      --> i
      @fact answer.args[1] --> i * 10
    end

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests huge amount of requests") do
    answer = Connection.Command(0, [])
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_ANSWER, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)

    for i=1:100
      Client.request(ccon, i, i, i)
      wait(()->answer.fn === i)
      @fact answer.fn           --> i
      @fact length(answer.args) --> 2
      @fact answer.args[1]      --> i
      @fact answer.args[2]      --> i
    end

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests sending huge data") do
    answer = Connection.Command(0, [])
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)
    local data::Array{Int, 1}    = zeros(Int, 5000000)

    Event.on(scon.observer, Server.EVENT_COMMAND, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_ANSWER, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)
    Client.request(ccon, 1, data)
    wait(()->answer.fn === 1)

    @fact answer.fn --> 1
    @fact answer.args[1] == data --> true

    Client.stop(ccon)
    Server.stop(scon)
  end
end