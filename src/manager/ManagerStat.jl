import RpcApi
import Config
#
# Checks if we need to update statistics data like amount of organisms,
# IPS, best organism parameters and so on. Updates statistics according
# to STAT_UPDATE_PERIOD config.
#
function _updateStat(stamp::Float64)
  local bestOrgs::Array{RpcApi.SimpleOrganism, 1}
  local org::RpcApi.SimpleOrganism
  local json::ASCIIString
  local code::ASCIIString

  if Config.val(:STAT_UPDATE_PERIOD) > 0 && (time() - stamp) > Config.val(:STAT_UPDATE_PERIOD)
    bestOrgs = Manager.getBest(1)
    if length(bestOrgs) > 0
      org  = bestOrgs[1]
      code = string(org.code)
      json = string(
        "{",
        string("\"Probabilities\"       : ", org.mutationProbabilities, ",\n"),
        string("\"Amount of functions\" : ", length(split(code, "function ")) - 2, ",\n"), # minus main function
        string("\"Functions calls\"     : ", length(split(code, "func_")) - 1, ",\n"),
        string("\"Mutations on clone\"  : ", string(org.mutationsOnClone), ",\n"),
        string("\"Mutations period\"    : ", string(org.mutationPeriod), ",\n"),
        string("\"Mutations amount\"    : ", string(org.mutationAmount), ",\n"),
        string("\"Energy\"              : ", string(org.energy), ",\n"),
        string("\"for operators\"       : ", length(split(code, "for i::Int8")) - 1, ",\n"),
        string("\"if operators\"        : ", length(split(code, "if var")) - 1, ",\n"),
        string("\"getEnergy\"           : ", length(split(code, "Creature.getEnergy")) - 1, ",\n"),
        string("\"Memory reading\"      : ", length(split(code, "haskey(o.mem)")) - 1, ",\n"),
        string("\"Eating\"              : ", length(split(code, "Creature.eat")) - 1, ",\n"),
        string("\"Moving\"              : ", length(split(code, "Creature.step")) - 1, ",\n"),
        string("\"Amount of lines\"     : ", string(org.codeSize), ",\n"),
        string("\"Amount of organisms\" : ", string(length(Manager._data.tasks)), ",\n"),
        string("\"IPS\"                 : ", string(Config.val(:WORLD_IPS)), ",\n"),
        string("\"World energy\"        : ", Manager._getWorldEnergy(), ",\n"),
        string("\"Generation number\"   : ", string(Manager._data.totalOrganisms), "\n"),
        "},\n"
      )
      _appendToFile(json, "file.json")
      _appendToFile(string("{\"Code\": \"", code, "\"},\n"), "code.json")
    end
    return time()
  end

  stamp
end

#
# Appends native values to the file.
# @param data String data to save
# @param file File name, we want append to
# @return {Bool} saving result
#
function _appendToFile(data::ASCIIString, file::ASCIIString)
  local io  = null
  local ret = true

  try
    io = open(file, "a") # "a" - means "file append" mode
    write(io, data)
    close(io)
  catch(e)
    warn("ManagerStat._appendToFile(): $e")
    ret = false
  finally
    if io !== null close(io) end
  end

  ret
end
