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
        run(`julia --color=yes $(ARGS[1]) recover`)
        break
      end
      break
    end
  end

  true
end
#
# Application entry point
#
main()