#
# TODO:
#
push!(LOAD_PATH, "$(pwd())/src")

import Client
using Creature
using Config
using RpcApi


function onAnswer(ans::Connection.Answer)
  global answer = ans.data
  println(answer)
end

answer = null 
con    = Client.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))
if con === false quit() end

Event.on(con.observer, Client.EVENT_ANSWER, onAnswer)
#Client.request(con, RPC_GET_REGION)