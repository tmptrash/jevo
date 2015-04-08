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
  mutator = {
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
    # {Uint} Amount of energy for first organisms. They are like Adam and 
    # Eve. It means that these organism were created by operator and not
    # by evolution.
    #
    "organismStartEnergy" => uint(100),
    #
    # {Uint} Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    "mutationsOnClone"    => uint(100)
  }
end