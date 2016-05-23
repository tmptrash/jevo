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

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer = ans.data)

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

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer = ans.data)

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

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer = ans.data)

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

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer = ans.data)

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

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)
    Client.request(ccon, 1, data)
    wait(()->answer.fn === 1)

    @fact answer.fn --> 1
    @fact answer.args[1] == data --> true

    Client.stop(ccon)
    Server.stop(scon)
  end
  facts("Tests two clients for one server") do
    answer = 0
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon1::ClientConnection = Client.create(IP, PORT)
    local ccon2::ClientConnection = Client.create(IP, PORT)

    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon1.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer += ans.data.args[1])
    Event.on(ccon2.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer += ans.data.args[1])

    Server.run(scon)
    for i=1:10
      Client.request(ccon1, i, i)
      Client.request(ccon2, i, i)
    end
    wait(()->answer > 109)
    @fact answer --> 110 # summa of requests

    Client.stop(ccon1)
    Client.stop(ccon2)
    Server.stop(scon)
  end
  facts("Tests two clients for two servers") do
    answer = 0
    local scon1::ServerConnection = Server.create(IP, PORT)
    local scon2::ServerConnection = Server.create(IP, PORT + 1)
    local ccon1::ClientConnection = Client.create(IP, PORT)
    local ccon2::ClientConnection = Client.create(IP, PORT + 1)

    Event.on(scon1.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(scon2.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon1.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer += ans.data.args[1])
    Event.on(ccon2.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer += ans.data.args[1])

    Server.run(scon1)
    Server.run(scon2)
    for i=1:10
      Client.request(ccon1, i, i)
      Client.request(ccon2, i, i + 1)
    end
    wait(()->answer > 119)
    @fact answer --> 120 # summa of requests

    Client.stop(ccon1)
    Client.stop(ccon2)
    Server.stop(scon2)
    Server.stop(scon1)
  end
  facts("Tests two clients for two servers, but one stopped") do
    answer = 0
    local scon1::ServerConnection = Server.create(IP, PORT)
    local scon2::ServerConnection = Server.create(IP, PORT + 1)
    local ccon1::ClientConnection = Client.create(IP, PORT)
    local ccon2::ClientConnection = Client.create(IP, PORT + 1)

    Event.on(scon1.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(scon2.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon1.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer += ans.data.args[1])
    Event.on(ccon2.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer += ans.data.args[1])

    Server.run(scon1)
    Server.run(scon2)
    Server.stop(scon2)
    for i=1:10
      Client.request(ccon1, i, i)
      Client.request(ccon2, i, i + 1)
    end
    wait(()->answer > 54)
    @fact answer --> 55

    Client.stop(ccon1)
    Client.stop(ccon2)
    Server.stop(scon1)
  end
  facts("Tests isOk() function works fine") do
    local answer = 0
    local scon::ServerConnection = Server.create(IP, PORT)
    local ccon::ClientConnection = Client.create(IP, PORT)

    @fact Client.isOk(ccon) --> true
    Event.on(scon.observer, Server.EVENT_BEFORE_RESPONSE, (cmd, ans)->ans.data = cmd)
    Event.on(ccon.observer, Client.EVENT_AFTER_RESPONSE, (ans::Connection.Answer)->answer = ans.data)

    Server.run(scon)
    @fact Client.isOk(ccon) --> true
    Client.request(ccon, 1, 10) # function - 1, parameter - 10
    wait(()->answer !== 0)

    @fact Client.isOk(ccon) --> true
    @fact answer.fn         --> 1
    @fact answer.args[1]    --> 10

    Client.stop(ccon)
    Server.stop(scon)

    wait(()->!Client.isOk(ccon))
    @fact Client.isOk(ccon) --> false
  end
end
