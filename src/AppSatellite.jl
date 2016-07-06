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

  local lastFile::ASCIIString = Backup.lastFile()
  local files::Array{ASCIIString, 1}
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
    end
    #
    # This is a fix for broken backup files. It's related to issue:
    # https://github.com/JuliaLang/julia/issues/15017
    # If new backup file wasn't created, then we have to remove last one
    # to fix the problem inside it, because it contains some error code :(
    #
    if lastFile == Backup.lastFile() && lastFile != ""
      files = Backup.getFiles()
      rm(Backup.FOLDER_NAME * "/" * files[length(files)])
    end
  end

  true
end
#
# Application entry point
#
main()
