module TestServer
  using FactCheck
  using Connection
  using Server
  using Client
  using Config

  const IP = ip"127.0.0.1"
  #
  # Simple echo callback
  #
  function onRequest(cmd::Connection.Command, ans::Connection.Answer) ans.data = cmd end

  facts("Tests server creation and start") do
    con = Server.create(IP, Config.val(:CONNECTION_SERVER_PORT))
    Server.run(con)
    Server.stop(con)
  end

  # facts("Tests server creation and start") do
  #   con = Server.create(IP, Config.val(:CONNECTION_SERVER_PORT))
  #   Event.on(con.observer, Server.EVENT_COMMAND, onRequest)
  #   Server.run(con)
  #   Server.stop(con)

  #   facts("Checks client connection") do
  #     #@fact length(Event.create().events) --> 0
  #   end    
  # end
end