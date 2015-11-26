#
# Applcation wide configuration. Simuates static fields in OOP world.
# Contains configurations for entire application. It should be possible
# to change some parameter here and the object, which contains it, updates
# it's state.
# TODO: describes sections and kets
#
# @author DeadbraiN
#
module Config
  export mutator
  export script
  export organism
  export world
  export connection
  #
  # Small hack for saving/loading data from/to the data file
  #
  type Data
    d::Dict{UInt16, Dict{UInt16, Any}}
  end
  #
  # Sections id's
  #
  const MUTATOR::UInt16         = 1
  #
  # Keys id's in one section
  #
  const ADD_CHANGE::UInt16      = 1
  const FUNC_MAX_ARGS::UInt16   = 2

  #
  # Saves all data into the file
  # @param file File name
  #
  function save(file::ASCIIString = "config.data")
    fileIO = open(file, "w")
    serialize(fileIO, _data.d)
    close(fileIO)
  end
  #
  # Loads all data from the file
  # @param file File name
  #
  function load(file::ASCIIString = "config.data")
    fileIO = open(file)
    _data.d = deserialize(fileIO)
    close(fileIO)
  end
  #
  # All configuration data
  #
  _data = Data(
    MUTATOR => Dict{UInt16, Any}(
      #
      # {Array} Probabilities with wich mutator decides what to do: add,
      #         or change existing construction of the script. 
      #         Depending on this values, organism may have different
      #         strategies of living. For example: if add value is bigger 
      #         then del and change, then it will be grow up all the time.
      #         If del value is bigger then other, then it will be decreased
      #         to one line code and will die.
      #
      ADD_CHANGE    => [1,1],
      #
      # {UInt8} Maximum amount of function parameters in orgamism's script.
      # It's used in Mutator during new function creation. Example:
      #
      #     function func12(var24, var25);end
      #
      # In example above there are two arguments. This amount of arguments
      # must be less then funcMaxArgs
      #
      FUNC_MAX_ARGS => UInt8(10)
    )
  )
  #
  # Mutator related configuration
  #
  const mutator = Dict{ASCIIString, Any}(
    #
    # {Array} Probabilities with wich mutator decides what to do: add,
    #         or change existing construction of the script. 
    #         Depending on this values, organism may have different
    #         strategies of living. For example: if add value is bigger 
    #         then del and change, then it will be grow up all the time.
    #         If del value is bigger then other, then it will be decreased
    #         to one line code and will die.
    #
    "addChange"           => [1,1],
    #
    # {UInt8} Maximum amount of function parameters in orgamism's script.
    # It's used in Mutator during new function creation. Example:
    #
    #     function func12(var24, var25);end
    #
    # In example above there are two arguments. This amount of arguments
    # must be less then funcMaxArgs
    #
    "funcMaxArgs"         => UInt8(10),
    #
    # {Uint} Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    "mutationsOnClone"    => UInt(100)
  )
  #
  # Script related settings
  #
  const script = Dict{ASCIIString, Any}(
    #
    # It's possible to skip some reserved blocks of code in Script.Code.blocks 
    # property. For example, functions block.
    #
    "blocksStartIndex"    => 2,
    #
    # Prefix for all custom functions. Final name of the function will be: func[num]
    #
    "funcPrefix"          => "func",
    #
    # Prefix for all variables. Final name of the function will be: var[num]
    #
    "varPrefix"           => "var"
  )
  #
  # Organism related configs
  #
  const organism = Dict{ASCIIString, Any}(
    #
    # Amount of organisms on program start
    #
    "startAmount"         => UInt(100),
    #
    # {Uint} Amount of energy for first organisms. They are like Adam and 
    # Eve. It means that these organism were created by operator and not
    # by evolution.
    #
    "startEnergy"         => UInt(10000),
    #
    # Maximum amount of energy, which one organism may contains
    #
    "maxEnergy"           => UInt(100000),
    #
    # Amount of iterations within organism's life loop, after that we decrease
    # amount of energy ono 1 point.
    #
    "decreaseAfterTimes"  => UInt(1000000),
    #
    # Value, which will be descreased in organism after "descreaseAfterTimes" period
    #
    "descreaseValue"      => UInt(1)
  )
  const world = Dict{ASCIIString, Any}(
    #
    # World width
    #
    "width"               => UInt(3),
    #
    # World height
    #
    "height"              => UInt(3),
    #
    # Delay between requests for obtaining remote world region.
    # This parameter affects frames per second in a window canvas
    #
    "frameDelay"          => 5,
    #
    # RGB, background color of the canvas, where organisms will be shown
    #
    "backColor"           => UInt32(0)
  )
  #
  # Configuration of the TCP connection
  #
  const connection = Dict{ASCIIString, Any}(
    #
    # Starting number for TCP/IP listening
    #
    "serverPort"          => 2000
  )
end