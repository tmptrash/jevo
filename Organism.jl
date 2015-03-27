#
# TODO: code should be wrapped by try...catch, because different 
# TODO: exceptions are possible. every exception should decrease
# TODO: energy of organism.
#
# TODO: think about energy limit for organism. add new library
# TODO: function: fullOfEnergy():Bool
# TODO: add memory operations: mem_read(index):Int, mem_write(index, Int)
#
module Organism
  import Mutator
  import Script
  import Config
  # TODO: remove this module
  using  Debug

  #
  # {Expr} Native organism's code on Julia. First oranisms start them living
  # with this default code. Later, Mutator module will change it.
  #
  _code = :(function life()
    begin
      #
      # ----------------------------------------------------------------------
      # Library functions section. This functions are embedded for Organism.
      # These functions shouldn't be in a Script.Code.blocks array, because 
      # we can't change them (e.g. in Mutator). But they should be in 
      # "Script.Code.funcs" array.
      #
      #
      # Checks if specified point with (x,y) coordinates has an energy value.
      # Possible values [0:typemax(Int)]. 0 means no energy.
      # @param  {Int} x X coordinate
      # @param  {Int} y Y coordinate
      # @return {Int} Energy value
      #
      function checkEnergy(x::Int, y::Int)
        # TODO:
      end
      #
      # Grabs energy from the left point. Grabbibg means decrease energy at point
      # and increase it at organism.
      # @param {Int} amount Amount of energy to grab
      #
      function grabEnergyLeft(amount::Int)
        # TODO:
      end
      #
      # Grabs energy from the right point.
      # @param {Int} amount Amount of energy to grab
      #
      function grabEnergyRight(amount::Int)
        # TODO:
      end
      #
      # Grabs energy from the up point.
      # @param {Int} amount Amount of energy to grab
      #
      function grabEnergyUp(amount::Int)
        # TODO:
      end
      #
      # Grabs energy from the down point.
      # @param {Int} amount Amount of energy to grab
      #
      function grabEnergyDown(amount::Int)
        # TODO:
      end
      #
      # Makes one step left. It decreases organism's x coodinate by 1.
      #
      function stepLeft()
        # TODO:
      end
      #
      # Makes one step right. It increases organism's x coodinate by 1.
      #
      function stepRight()
        # TODO:
      end
      #
      # Makes one step up. It decrease organism's y coodinate by 1.
      #
      function stepUp()
        # TODO:
      end
      #
      # Makes one step down. It increase organism's y coodinate by 1.
      #
      function stepDown()
        # TODO:
      end
      #
      # Makes organism clone. During cloning new organism will get few
      # mutations. It will be a difference from father's organism. This
      # function should find "free" place for new organism around it.
      # If there is no "free" place, then cloning will be declined.
      #
      function clone()
        # TODO:
      end
    end

    #
    # -----------------------------------------------------------------------
    # This is main loop, where organism lives. It's body will be changed soon
    # in Mutator module. This loop must be after ambedded functions.
    #
    while true
      produce()
    end
  end)
  #
  # {Script.Code} Default code of the organism. It will be changed 
  # soon throught mutations.
  #
  _script = Script.Code(
    #
    # {Script.Fields} Code variables and functions related fields
    #
    0,0,Config.mutator["funcMaxArgs"],
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
      "vars"  => Symbol[],
      "block" => _code.args[2].args[4].args[2],
      "parent"=> [                                  # function's life() block
          "vars"  => [],
          "block" => _code.args[2],
          "parent"=> nothing
      ],
    ]],
    #
    # {Array{Dict{ASCIIString, Any}}} All functions in a script. See
    # Script.Code.funcs for details. This section contains two type
    # of functions: embedded (checkEnergy()...clone()) and generated.
    # Embedded functions can't be changed by enyone. Generated may be.
    #
    [
      ["name"=>"checkEnergy",     "args"=>[["name"=>"x",      "type"=>Int], ["name"=>"y", "type"=>Int]]]
      ["name"=>"grabEnergyLeft",  "args"=>[["name"=>"amount", "type"=>Int]]                            ]
      ["name"=>"grabEnergyRight", "args"=>[["name"=>"amount", "type"=>Int]]                            ]
      ["name"=>"grabEnergyUp",    "args"=>[["name"=>"amount", "type"=>Int]]                            ]
      ["name"=>"grabEnergyDown",  "args"=>[["name"=>"amount", "type"=>Int]]                            ]
      ["name"=>"stepLeft",        "args"=>[]                                                           ]
      ["name"=>"stepRight",       "args"=>[]                                                           ]
      ["name"=>"stepUp",          "args"=>[]                                                           ]
      ["name"=>"stepDown",        "args"=>[]                                                           ]
      ["name"=>"clone",           "args"=>[]                                                           ]
    ]
  )
end