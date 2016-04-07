#
# This is remote terminal application. It's used for remote
# configuring and statistics collecting of server. It supports
# all commands, which are declared in RpcApi.jl module.
#
# @author DeadbraiN
#
include("ImportFolders.jl")

import Client
import Creature
import Connection
import Config
importall Terminal
#
# Answer function. It's called every time on request from server
# @param ans Server answer
#
function onAnswer(ans::Connection.Answer)
  global answer = ans.data
  sleep(0.3)
  println(answer)
end
#
# Application entry point function. Adds listeners for
# server responses and initializes Terinal module.
#
function main()
  # TODO: ip should be get from config
  local con = Client.create(ip"127.0.0.1", Config.val(:CONNECTION_SERVER_PORT))

  if !Client.isOk(con) quit() end
  Event.on(con.observer, Client.EVENT_ANSWER, onAnswer)
  Terminal.init(con)
end
#
# App start point
#
main()