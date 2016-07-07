#
# This is application file of Satellite. It tracks some process
# and rerun it in case of crash. This is needed, because Julia has
# an issue with long term eval() function running. Github issue:
# https://github.com/JuliaLang/julia/issues/15017
#
# @author DeadbraiN
#
include("ImportFolders.jl")
import Helper
import Backup
#
# This function starts the satellite and begin watching on
# Manager application (process).
#
function main()
  if length(ARGS) < 1
    Helper.warn("Application file required. e.g.: julia AppSatellite.jl App.jl")
    return false
  end
  #
  # In case of error or if non zero exit code will be returned
  # an exeption will be thrown.
  #
  while true
    try
      while true
        run(`julia --color=yes $(ARGS[1]) recover $(ARGS[2:end])`)
        break
      end
      break
    catch e
      _removeBrokenBackup()
    end
  end

  true
end
#
# This is a fix for broken backup files. It's related to issue:
# https://github.com/JuliaLang/julia/issues/15017
# If new backup file wasn't created, then we have to remove last one
# to fix the problem inside it, because it contains some error code :(
# @return Updated file name
#
function _removeBrokenBackup()
  local last::ASCIIString = Backup.lastFile()

  try
    Helper.warn("Removing broken backup file: $last")
    if last != "" rm(Backup.FOLDER_NAME * "/" * last) end
  catch e
    Helper.error("Something wrong with backup file removing: $last")
  end
end
#
# Application entry point
#
main()
