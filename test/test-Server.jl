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

  facts("Tests server creation and start") do
    con = Server.create(IP, PORT)
    Server.run(con)
    Server.stop(con)
  end

  facts("Tests server receiving command") do
    #
    # server creation
    #
    answer = nothing
    function _onRequest(cmd::Connection.Command, ans::Connection.Answer)
      ans.data = cmd
      answer = Connection.Command(cmd.fn, deepcopy(cmd.args))
    end
    scon = Server.create(IP, PORT)
    Event.on(scon.observer, Server.EVENT_COMMAND, _onRequest)
    Server.run(scon)
    #
    # client creation
    #
    ccon = Client.create(IP, PORT)
    
    Client.request(ccon, 0, 1)
    i = 0
    Timer((t)->(yield(); i+=1; if i > TIMEOUT || answer !== nothing close(t) end), 0, 1)
    @fact i <= TIMEOUT    --> true
    @fact answer.fn       --> 0
    @fact answer.args[1]  --> 1
    yield()
    
    Client.stop(ccon)
    Server.stop(scon)
  end
end