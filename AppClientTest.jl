push!(LOAD_PATH, pwd())
include("Client.jl")
include("Config.jl")
include("ManagerRpcApi.jl")
using Config

function onAnswer(ans::Connection.Answer)
  println(ans)
end

con = Client.create(ip"127.0.0.1", Config.val(CONNECTION, SERVER_PORT))
if con === false quit() end

Event.on(con.observer, Client.EVENT_ANSWER, onAnswer)
Client.request(con, RPC_GET_REGION)