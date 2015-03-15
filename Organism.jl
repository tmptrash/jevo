#
# TODO:
#
module Organism
  import Mutator
  import Script
  import Config
  # TODO: remove this module
  using  Debug

  #
  # TODO: temporary method
  #
  function mutate()
  	Mutator.mutate(_script);
  end

  #
  # {Expr} Native organism's code on Julia
  #
  _code = :(function t();while(true);var0=0;produce("start");end;end)
  #
  # {Script.Code} Default code of the organism. It will be changed 
  # soon throught mutations.
  #
  _script = Script.Code(
  	#
  	# {Script.Fields} Code variables and functions related fields
  	#
  	0,0,Config.mutator["funcMaxParams"],
    #
  	# {Expr} Initial organism's script. Will be mutated soon. Related to 
  	# blocks field below. See Script.Code.code for details.
  	#
  	_code,
  	#
  	# {Array{Dict{ASCIIString, Any}}} Blocks structure. Describes 
  	# default code above. See Script.Code.blocks for details.
  	#
  	[[                                              # while(true) block
      "vars"  => [:(var0)],
      "block" => _code.args[2].args[2].args[2],
      "parent"=> [                                  # function's t() block
          "vars"  => [],
          "block" => _code.args[2],
          "parent"=> nothing,
          "funcs" => (Dict{ASCIIString, Any})[]     # functions available only in main block
      ],
    ]]
  )
end