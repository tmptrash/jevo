#
# Applciation wide configuration
# TODO:
#
module Config
  export mutator

  mutator = {
    #
    # {Int} Probabilities with with mutator decides what to do: add new,
    #       delete or change existing construction of the script.
    # TODO: describe the formula of probability
    #
    "addProbability"=>100,
    "delProbability"=>20,
    "changeProbability"=>50,
    #
    # {Uint8} Maximum amount of function parameters in orgamism's script
    #
    "funcMaxParams"=>10
  }
end