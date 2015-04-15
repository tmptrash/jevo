#
# Events:
#   beforeclone{Creature, {ret=>Any}}    Fires before cloning. Handlers may decline
#                                        cloning by returning false. Second argument
#                                        is used for returning value from handlers.
#   clone      {Creature, Creature}      Fires after cloning the organism. First arg
#                                        is an original organism, second - clonned.
#   getenergy  {Creature, Point, {ret=>Any}} Fires to check if specified point
#                                        in world contains an energy. Returns amount
#                                        of energy in "ret" property.
#   grableft   {Point, Uint, {ret=>Any}} Fires to obtain energy from the left side of
#                                        current organism.
#
# TODO: code should be wrapped by try...catch, because different 
# TODO: exceptions are possible.
#
# TODO: think about energy limit for organism. add new library
# TODO: function: fullOfEnergy():Bool
# TODO: add memory operations: mem_read(index):Int, mem_write(index, Int)
#
module Organism
  import Mutator
  import Script
  import Config
  import Event

  export Creature
  # TODO: remove this module
  using  Debug

  #
  # One point in the world. Is described by two coordinates.
  #
  type Point
    x::Int
    y::Int
  end
  #
  # Organism related data
  # TODO: describe events. e.g.: beforeclone, clone
  #
  type Creature
    #
    # {Uint} Amount of energy for current organism
    #
    energy::Uint
    #
    # {Array{Int}} Organism's position in a world
    #
    pos::Point
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
  # Creates new organism with default settings.
  # @return {Organism}
  #
  function create()
    #
    # Native organism's code on Julia. First oranisms start them living
    # with this default code. Later, Mutator module will change it.
    #
    code = :(function life()
      creature = Organism.Creature[]
      #
      # It should be first produce() call. This is how we obtain creature
      # instance from outside. We need it for embedded functions like clone().
      # We have to use some type (e.g. Array), because it's passed by reference
      # and after returning it will contain creature instance inside array.
      #
      produce(creature)
      #
      # {Creature} creature Instance of code related creature. This instance
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
          Organism._getEnergy(creature, x, y)
        end
        #
        # Grabs energy from the left point. Grabbibg means decrease energy at point
        # and increase it at organism.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyLeft(amount::Uint)
          Organism._grabEnergy(creature, "left", amount)
        end
        #
        # Grabs energy from the right point.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyRight(amount::Int)
          Organism._grabEnergy(creature, "right", amount)
        end
        #
        # Grabs energy from the up point.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyUp(amount::Int)
          Organism._grabEnergy(creature, "up", amount)
        end
        #
        # Grabs energy from the down point.
        # @param amount Amount of energy to grab
        #
        function funcGrabEnergyDown(amount::Int)
          Organism._grabEnergy(creature, "down", amount)
        end
        #
        # Makes one step left. It decreases organism's x coodinate by 1.
        #
        function funcStepLeft()
          # TODO:
        end
        #
        # Makes one step right. It increases organism's x coodinate by 1.
        #
        function funcStepRight()
          # TODO:
        end
        #
        # Makes one step up. It decrease organism's y coodinate by 1.
        #
        function funcStepUp()
          # TODO:
        end
        #
        # Makes one step down. It increase organism's y coodinate by 1.
        #
        function funcStepDown()
          # TODO:
        end
        #
        # Makes organism clone. During cloning new organism will get few
        # mutations. It will be a difference from father's organism. This
        # function should find "free" place for new organism around it.
        # If there is no "free" place, then cloning will be declined.
        #
        function funcClone()
          Organism._clone(creature)
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
    # @return {Creature}
    # New organism with default parameters
    # TODO: position should be set from outside
    Creature(Config.organism["startEnergy"], [0, 0], script, Event.Observer(Dict{ASCIIString, Array{Function}}()))
  end
  #
  # Clones an organism. It does many things:
  # - fires "beforeclone" to ask parent object about possibility to clone
  # - if ok, creates new default organism
  # - sets energy and position (from parent object)
  # - adds mutations to new organism
  # - fires "clone" event
  # @param {Creature} creature Instance of parent organism.
  #
  function _clone(creature::Creature)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" key will be contained permission to 
    # continue the clonning. "pos" means new organism's coordinates.
    #
    retObj = {"ret" => nothing}
    #
    # Any listener of "beforeclone" event may cancel cloning. For example, 
    # it may be Organism's manager, which knows that all points around
    # current organism aren't empty and it's impossible to clone here.
    #
    if !Event.fire(creature.observer, "beforeclone", creature, retObj) return nothing end
    if !retObj["ret"] return nothing end

    newCreature = create()
    # TODO: need to think about this amount of energy. I think parent 
    # TODO: organism should loose some energy after clonning.
    newCreature.energy = creature.energy
    newCreature.pos    = retObj["pos"]
    for i = 1:Config.mutator["mutationsOnClone"]
      Mutator.mutate(creature.script, Config.mutator["addDelChange"])
    end

    Event.fire(creature.observer, "clone", creature, newCreature)
  end
  #
  # Checks amount of organism's energy in {x,y} point
  # @param x X coordinate
  # @param y Y coordinate
  #
  function _getEnergy(creature::Creature, x::Int, y::Int)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" will be contained amount of energy.
    #
    retObj = {"ret" => nothing}
    #
    # Listener of "getenergy" should set amount of energy in retObj["ret"]
    # Possible values [0...typemax(Int)]
    #
    Event.fire(creature.observer, "getenergy", creature, Point(x, y), retObj)
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
  function _grabEnergy(creature::Creature, dir::ASCIIString, amount::Uint)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" key will be contained amount of grabbed energy.
    #
    retObj = {"ret" => nothing}
    #
    # Listener of "grab$dir" should set amount of energy in retObj["ret"]
    # Possible values [0...amount]
    #
    Event.fire(creature.observer, "grab$dir", creature.pos, amount, retObj)
    creature.energy += retObj.ret
  end
end