type T
  x::Int
end

t = time()
client = connect(2000)
for i::Int=1:1000000
  deserialize(client)
  if i::Int === 1 t::Float64 = time() end
  if i::Int === 1000000
    t::Float64 = time() - t::Float64
    println("rps: ", i::Int / t::Float64, ", time: ", t::Float64)
  end
end
