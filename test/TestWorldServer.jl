#
# This module is used only for tests. It doesn't a 
# part of jevo aplication.
#
module TestWorldServer
  import World
  import Helper
  import Server
  import Connection
  import Config
  import RpcApi
  #
  # An analog of ManagerRpc.getRegion() function
  #
  function getRegion(x::Int = 1, y::Int = 1, x1::Int = 0, y1::Int = 0)
    maxWidth  = size(Manager._data.world.data)[2]
    maxHeight = size(Manager._data.world.data)[1]

    if (x1 < 1 || x1 > maxWidth)  x1 = maxWidth  end
    if (y1 < 1 || y1 > maxHeight) y1 = maxHeight end
    if (x  < 1 || x  > maxWidth)  x  = 1 end
    if (y  < 1 || y  > maxHeight) y  = 1 end 
    
    RpcApi.Region(_world.data[y:y1, x:x1], Config.val(:WORLD_IPS))
  end
  #
  # Requests handler
  #
  function onRequest(cmd::Connection.Command, ans::Connection.Answer)
    #
    # 1 - getRegion
    #
    if     cmd.fn === 1 ans.data = getRegion(cmd.args[1], cmd.args[2], cmd.args[3], cmd.args[4])
    #
    # 2 - 
    #
    elseif cmd.fn === 2 ans.data = getRegion(cmd.args[1], cmd.args[2], cmd.args[3], cmd.args[4])
    end
  end
  #
  # Runs the server
  #
  function run()
    con = Server.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
    Event.on(con.observer, Server.EVENT_COMMAND, onRequest)
    Server.run(con)
    con
  end
  #
  # Stops the server
  #
  function stop(con)
    Server.stop(con)
  end
  #
  # Temporary world instance
  #
  _world = World.create()
end