include("../../src/global/ImportFolders.jl")

import Config
import Client
import Connection
import Event

global i = 1
global t = time()
global con = Client.create(ip"127.0.0.1", Config.val(:conServerPort), true)

function resp(sock::Base.TCPSocket, data::Array{Any, 1}, ans::Connection.Answer)
  global i
  global t
  global con

  if i::Int === 1 t::Float64 = time() end
  if i::Int === 1000000
    t::Float64 = time() - t::Float64
    println("rps: ", i::Int / t::Float64, ", time: ", t::Float64)
  end
  i::Int += 1
end

Event.on(con.observer, Connection.EVENT_BEFORE_RESPONSE, resp)
Client.request(con, UInt8(1), UInt(2))
