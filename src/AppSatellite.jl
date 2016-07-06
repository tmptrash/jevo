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

  local lastBackupFile::ASCIIString = Backup.lastFile()
  #
  # In case of error or if non zero exit code will be returned
  # an exeption will be thrown.
  #
  while true
    try
      while true
        # TODO: we have to check if run() returns 0. It means that
        # TODO: our process exits correctly and we don't need to
        # TODO: remove last backup file
        run(`julia --color=yes $(ARGS[1]) recover $(ARGS[2:end])`)
        # TODO: remove this!!!
        println("Line just after run(...)")
        break
      end
      println("Line inside \"try\" block")
      break
    end
    lastBackupFile = _checkBrokenBackup(lastBackupFile)
  end

  true
end
#
# This is a fix for broken backup files. It's related to issue:
# https://github.com/JuliaLang/julia/issues/15017
# If new backup file wasn't created, then we have to remove last one
# to fix the problem inside it, because it contains some error code :(
# @param file File we have to check
# @return Updated file name
#
function _checkBrokenBackup(file::ASCIIString)
  local files::Array{ASCIIString, 1}

  println("Checking broken backup... file: $(file), last backup file: $(Backup.lastFile())")
  if file == Backup.lastFile() && file != ""
    try
      Helper.warn("Removing broken backup file: $file")
      files = Backup.getFiles()
      if length(files) > 0 rm(Backup.FOLDER_NAME * "/" * files[length(files)]) end
    catch e
      Helper.error("Something wrong with backup file removing: $file")
    end
  end

  Backup.lastFile()
end
#
# Application entry point
#
main()
