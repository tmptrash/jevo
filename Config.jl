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
    # {Int} Probabilities with with mutator decides what to do: add new,
    #       delete or change existing construction of the script.
    # TODO: describe the formula of probability
    #
    "addProbability"   =>100,
    "delProbability"   =>20,
    "changeProbability"=>50,
    #
    # {Uint8} Maximum amount of function parameters in orgamism's script.
    # It's used in Mutator during new function creation. Example:
    #
    #     function func12(var24, var25);end
    #
    # In example above there are two arguments. This amount of arguments
    # must be less then funcMaxArgs
    #
    "funcMaxArgs"      =>10
  }
end