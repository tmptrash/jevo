#
# TODO:
#
include("ImportFolders.jl")

import Client
import Creature
import Config
import RpcApi


function onAnswer(ans::Connection.Answer)
  global answer = ans.data
  println(answer)
end

answer = null 
con    = Client.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
if !Client.isOk(con) quit() end

Event.on(con.observer, Client.EVENT_ANSWER, onAnswer)
#Client.request(con, RpcApi.RPC_GET_REGION)