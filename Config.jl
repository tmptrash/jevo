#
# Applciation wide configuration
# TODO:
#
module Config
  const mutator = [
    #
    # {Int} Probabilities with with mutator decides what to do: add new,
    #       delete or change existing construction of the script.
    # TODO: describe the formula of probability
    #
    "addProbability"   =>100,
    "delProbability"   =>20 ,
    "changeProbability"=>50
  ]
end