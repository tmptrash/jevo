module TestServer
  using FactCheck
  using Server
  using Config

  facts("Main fact for running server...") do
    #
    # Server creation...
    #
    function onRequest(cmd::Connection.Command, ans::Connection.Answer)
      println(cmd)
      ans.data = "$(cmd.fn) answer"
    end
    con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
    Event.on(con.observer, Server.EVENT_COMMAND, onRequest)
    Server.run(con)

    #
    # Server tests
    #
    facts("Checks client connection") do
      #@fact length(Event.create().events) --> 0
    end

    #
    # Server stop
    #
    Server.stop(con)
  end
end