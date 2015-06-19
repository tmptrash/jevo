#
# Events:
#   clone      {Organism}                Fires if script is called "clone" command.
#   getenergy  {Organism, Point, {ret=>Num}} Fires to check if specified point
#                                        in world contains an energy. Returns amount
#                                        of energy in "ret" property.
#   grableft   {Organism, Uint, {ret=>Num}} Fires to obtain energy from the left side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   grabright  {Organism, Uint, {ret=>Num}} Fires to obtain energy from the right side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   grabup     {Organism, Uint, {ret=>Num}} Fires to obtain energy from the up side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   grabdown   {Organism, Uint, {ret=>Num}} Fires to obtain energy from the right side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   stepleft   {Organism, {ret=>Point}}  Fires to make a step left. "ret" will contain
#                                        new organism's position.
#   stepright  {Organism, {ret=>Point}}  Fires to make a step right. "ret" will contain
#                                        new organism's position.
#   stepup     {Organism, {ret=>Point}}  Fires to make a step up. "ret" will contain
#                                        new organism's position.
#   stepdown   {Organism, {ret=>Point}}  Fires to make a step down. "ret" will contain
#                                        new organism's position.
#
# TODO: code should be wrapped by try...catch, because different 
# TODO: exceptions are possible.
#
# TODO: think about energy limit for organism. add new library
# TODO: function: fullOfEnergy():Bool
# TODO: add memory operations: mem_read(index):Int, mem_write(index, Int)
#
module Creature
  import Mutator
  import Script
  import Config
  import Event
  import Helper

  export Organism
  export RetObj

  export create
  # TODO: remove this module
  using  Debug

  #
  # Organism related data
  # TODO: describe events. e.g.: beforeclone, clone
  #
  type Organism
    #
    # {Uint} Amount of energy for current organism
    #
    energy::Uint
    #
    # {Array{Int}} Organism's position in a world
    #
    pos::Helper.Point
    #
    # {Script.Code} Code of organism
    #
    script::Script.Code
    #
    # {Event.Observer} Adds events listening/firing logic to the organism.
    #
    observer::Event.Observer
  end
  #
  # Universal structure for returning a value from event handlers.
  # See "beforeclone", "getenergy" and other events for details.
  #
  type RetObj
    #
    # Return value
    #
    ret::Any
    #
    # Position in a world
    #
    pos::Helper.Point
    #
    # ctor
    #
    RetObj(r = nothing, p = nothing) = (x = new(r); p === nothing ? x : (x.pos = p;x))
  end

  #
  # Creates new organism with default settings.
  # @return {Creature}
  #
  function create(pos::Helper.Point = Helper.Point(0, 0))
    #
    # Native organism's code on Julia. First oranisms start them living
    # with this default code. Later, Mutator module will change it.
    #
    code = :(function life()
      creature = Creature.Organism[]
      #
      # It should be first produce() call. This is how we obtain creature
      # instance from outside. We need it for embedded functions like clone().
      # We have to use some type (e.g. Array), because it's passed by reference
      # and after returning it will contain creature instance inside array.
      #
      produce(creature)
      #
      # {Organism} creature Instance of code related creature. This instance
      # will be used in organism's script during events fire.
      #
      creature = creature[1]
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
        # @param x X coordinate
        # @param y Y coordinate
        # @return {Int} Energy value
        #
        function funcGetEnergy(x::Int, y::Int)
          Creature._getEnergy(creature, x, y)
        end
        #
        # Grabs energy from the left point. Grabbibg means decrease energy at point
        # and increase it at organism.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyLeft(amount::Int)
          Creature._grabEnergy(creature, "left", uint(amount))
        end
        #
        # Grabs energy from the right point.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyRight(amount::Int)
          Creature._grabEnergy(creature, "right", uint(amount))
        end
        #
        # Grabs energy from the up point.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyUp(amount::Int)
          Creature._grabEnergy(creature, "up", uint(amount))
        end
        #
        # Grabs energy from the down point.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyDown(amount::Int)
          Creature._grabEnergy(creature, "down", uint(amount))
        end
        #
        # Makes one step left. It decreases organism's x coodinate by 1.
        #
        function funcStepLeft()
          Creature._step(creature, "left")
        end
        #
        # Makes one step right. It increases organism's x coodinate by 1.
        #
        function funcStepRight()
          Creature._step(creature, "right")
        end
        #
        # Makes one step up. It decrease organism's y coodinate by 1.
        #
        function funcStepUp()
          Creature._step(creature, "up")
        end
        #
        # Makes one step down. It increase organism's y coodinate by 1.
        #
        function funcStepDown()
          Creature._step(creature, "down")
        end
        #
        # Makes organism clone. During cloning new organism will get few
        # mutations. It will be a difference from father's organism. This
        # function should find "free" place for new organism around it.
        # If there is no "free" place, then cloning will be declined.
        #
        function funcClone()
          Creature._clone(creature)
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
    # Code blocks for current application (see code var)
    #
    blocks = [
      Script.Block(                    # all functions block (begin...end)         
        Symbol[],
        code.args[2].args[8]
      ),
      Script.Block(                    # while(true) block
        Symbol[],
        code.args[2].args[10].args[2],
        Script.Block(                  # parent, function's life() block
          Symbol[],
          code.args[2]
        )
      )
    ]
    #
    # {Script.Code} Default code of the organism. It will be changed 
    # soon throught mutations.
    #
    script = Script.Code(
      #
      # {Script.Fields} Code variables and functions related fields
      #
      0,0,Config.mutator["funcMaxArgs"],
      #
      # {Expr} Initial organism's script. Will be mutated soon. Related to 
      # blocks field below. See Script.Code.code for details.
      #
      code,
      #
      # {Array{Block} Blocks structure. Describes default code above. See 
      # Script.Code.blocks for details.
      #
      blocks,
      #
      # {Array{Script.Func}} All functions in a script. See
      # Script.Code.funcs for details. This section contains two type
      # of functions: embedded (funcGetEnergy()...funcClone()) and generated.
      # Embedded functions can't be changed by enyone. Generated may be.
      #
      [
        Script.Func("funcGetEnergy",       [Script.Var("x",      Int), Script.Var("y", Int)])
        Script.Func("funcGrabEnergyLeft",  [Script.Var("amount", Int)                      ])
        Script.Func("funcGrabEnergyRight", [Script.Var("amount", Int)                      ])
        Script.Func("funcGrabEnergyUp",    [Script.Var("amount", Int)                      ])
        Script.Func("funcGrabEnergyDown",  [Script.Var("amount", Int)                      ])
        Script.Func("funcStepLeft",        [                                               ])
        Script.Func("funcStepRight",       [                                               ])
        Script.Func("funcStepUp",          [                                               ])
        Script.Func("funcStepDown",        [                                               ])
        Script.Func("funcClone",           [                                               ])
      ],
      #
      # {Expr} Block for functions. See Script.Code.fnBlock for details.
      #
      blocks[1]
    )
    #
    # @return {Organism}
    # New organism with default parameters
    # TODO: position should be set from outside
    Organism(Config.organism["startEnergy"], pos, script, Event.create())
  end
  #
  # Clones an organism. It only fires an event. Clonning will be
  # processes in a Manager module. See it for details.
  # @param {Organism} creature Instance of parent organism.
  #
  function _clone(creature::Organism)
    Event.fire(creature.observer, "clone", creature)
  end
  #
  # Checks amount of organism's energy in {x,y} point
  # @param x X coordinate
  # @param y Y coordinate
  #
  function _getEnergy(creature::Organism, x::Int, y::Int)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" will be contained amount of energy.
    #
    retObj = RetObj()
    #
    # Listener of "getenergy" should set amount of energy in retObj.ret
    # Possible values [0...typemax(Int)]
    #
    Event.fire(creature.observer, "getenergy", creature, Helper.Point(x, y), retObj)
    #
    # Return value
    #
    retObj.ret
  end
  #
  # Universal method for grabbing energy from the world. It grabs at
  # the position up, left, bottom or right from current organism.
  # @param creature Current organism
  # @param dir      Direction ("left", "right", "up", "down")
  # @param amount   Amount of energy to grab
  #
  function _grabEnergy(creature::Organism, dir::ASCIIString, amount::Uint)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" key will be contained amount of grabbed energy.
    #
    retObj = RetObj()
    #
    # Listener of "grab$dir" should set amount of energy in retObj.ret
    # Possible values [0...amount]
    #
    Event.fire(creature.observer, "grab$dir", creature, amount, retObj)
    creature.energy += retObj.ret
  end
  #
  # Makes one step with specified direction
  # @param creature Organism to move
  # @param dir Direction ("left", "right", "up", "down")
  #
  function _step(creature::Organism, dir::ASCIIString)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" key will be contained amount of grabbed energy.
    #
    retObj = RetObj()
    #
    # Listener of "step$dir" should set new position in retObj.ret
    #
    Event.fire(creature.observer, "step$dir", creature, retObj)
    creature.pos = retObj.pos
  end
end