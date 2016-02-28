#
# TODO: add tests:
# TODO: - send many commands
# TODO: - pooling
# TODO: - send small and big data
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
end