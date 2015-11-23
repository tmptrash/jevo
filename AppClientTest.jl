push!(LOAD_PATH, pwd())
include("Client.jl")
include("Config.jl")
include("ManagerRpcApi.jl")

function onAnswer(ans::Connection.Answer)
  println(ans)
end

con = Client.create(ip"127.0.0.1", Config.connection["serverPort"])
Event.on(con.observer, Client.EVENT_ANSWER, onAnswer)
Client.request(con, RPC_GET_REGION)