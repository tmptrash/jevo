#
# Applcation wide configuration. Simuates static fields in OOP world.
# Contains configurations for entire application. It should be possible
# to change some parameter here and the object, which contains it, updates
# it's state.
#
module Config
  export mutator
  #
  # Mutator related configuration
  #
  const mutator = {
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
    # {Uint8} Maximum amount of function parameters in orgamism's script.
    # It's used in Mutator during new function creation. Example:
    #
    #     function func12(var24, var25);end
    #
    # In example above there are two arguments. This amount of arguments
    # must be less then funcMaxArgs
    #
    "funcMaxArgs"         => uint8(10),
    #
    # {Uint} Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    "mutationsOnClone"    => uint(100)
  }
  #
  # Script related settings
  #
  const script = {
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
  }
  #
  # Organism related configs
  #
  const organism = {
    #
    # Amount of organisms on program start
    #
    "startAmount"         => uint(100),
    #
    # {Uint} Amount of energy for first organisms. They are like Adam and 
    # Eve. It means that these organism were created by operator and not
    # by evolution.
    #
    "startEnergy"         => uint(0xDDDD),
    #
    # Maximum amount of energy, which one organism may contains
    #
    "maxEnergy"           => uint(100000),
    #
    # Amount of iterations within organism's life loop, after that we decrease
    # amount of energy ono 1 point.
    #
    "decreaseAfterTimes"  => uint(1000)
  }
  const world = {
    #
    # World width
    #
    "width"               => uint(3),
    #
    # World height
    #
    "height"              => uint(3),
    #
    # Delay between requests for obtaining remote world region.
    # This parameter affects frames per second in a window canvas
    #
    "frameDelay"          => 5
  }
  #
  # Configuration of the TCP connection
  #
  const connection = {
    #
    # Starting number for TCP/IP listening
    #
    "serverPort"          => 2000
  }
end