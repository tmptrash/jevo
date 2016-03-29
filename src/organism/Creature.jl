#
# Events:
#   clone      {Organism}                Fires if script is called "clone" command.
#   getenergy  {Organism, Point, {ret=>Num}} Fires to check if specified point
#                                        in world contains an energy. Returns amount
#                                        of energy in "ret" property.
#   grableft   {Organism, UInt, {ret=>Num}} Fires to obtain energy from the left side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   grabright  {Organism, UInt, {ret=>Num}} Fires to obtain energy from the right side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   grabup     {Organism, UInt, {ret=>Num}} Fires to obtain energy from the up side of
#                                        current organism. Second parameter is an 
#                                        amount of energy to grab. "ret" will contain
#                                        new organism's position.
#   grabdown   {Organism, UInt, {ret=>Num}} Fires to obtain energy from the right side of
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
# @author DeadbraiN
#
# TODO: describe events. e.g.: beforeclone, clone
# TODO: describe annotations: @oapi (organism API), @inheritable (an ability to inherit the property to child).
#
module Creature
  import Event
  import Helper
  using Config
  using Debug

  export Organism

  export create
  export born
  export getEnergy
  export eatLeft
  export eatRight
  export eatUp
  export eatDown
  export stepLeft
  export stepRight
  export stepUp
  export stepDown
  #
  # Enumeration for direction: up, down, left, right
  #
  @enum DIRECTION up=1 down=2 left=3 right=4
  #
  # Describes one block. Blocks are: "for", "if", "function" and other 
  # operators. Is a part of "Func" type.
  #
  type Block
    #
    # Map of available variables separated by types. All these
    # variables belong to one (current) block
    #
    vars::Dict{DataType, Array{Symbol, 1}}
    #
    # Reference to code lines inside Organism.code AST.
    #
    lines::Array{Expr, 1}
  end
  #
  # Describes one function as a data container. It contains blocks
  # and variables collected by types. See Creature.Organism.vars
  # property for details.
  #
  type Func
    #
    # Reference to the function's Expression
    #
    code::Expr
    #
    # All blocks within one (current) function. Blocks are belong
    # to if, for, function and other operators. All mutations should 
    # be done within blocks. Block of the parent function should be
    # first in this array.
    #
    blocks::Array{Block, 1}
  end
  #
  # Describes one organism. In general it consists of energy, world
  # position and many inheritable properties like code, mutationPeriod
  # and so on...
  #
  type Organism
    #
    # @inheritable
    # Code in AST format
    #
    code::Expr
    #
    # Compiled version of code
    #
    codeFn::Function
    #
    # @inheritable
    # Amount of code lines including lines in functions
    #
    codeSize::Int
    #
    # @inheritable
    # Counter, which is used for creating unique variable and function
    # names. e.g.: var_12, func_34. Increase itself every time, then 
    # new variable is created.
    #
    symbolId::Int
    #
    # @inheritable
    # Map of available variables separated by functions and types. 
    # Function in this case is a parent (container) for variables.
    # TODO: remove this
    #vars::Dict{ASCIIString, Func}
    #
    # @inheritable
    # Array of code functions. Is used for finding rundom functions 
    # for future mutations inside them. Main function is also in this
    # array. Main function should be first in this array.
    #
    funcs::Array{Func, 1}
    #
    # @inheritable
    # Mutations probability. Add, change, delete. e.g.: [1,10,2]
    # means, that "add" mutation will be 10 times rare then "change"
    # and 2 times rare then "delete" mutations.
    #
    mutationProbabilities::Array{Int}
    #
    # @inheritable
    # Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    mutationsOnClone::Int
    #
    # @inheritable
    # Amount of iterations within organism's life loop, after that we 
    # do mutations according to MUTATE_AMOUNT config amount. If 0, then
    # mutations will be disabled.
    #
    mutationPeriod::Int
    #
    # @inheritable
    # Value, which will be used like amount of mutations per 
    # MUTATE_AFTER_TIMES iterations. 0 is a possible value if
    # we want to disable mutations.
    #
    mutationAmount::Int
    #
    # Organism's energy. If it's zero, then organism is die.
    # It can't be more then ORGANISM_MAX_ENERGY configuration.
    #
    energy::Int
    #
    # @inheritable
    # Color of organism. Similar colors means relative organisms.
    # Example: 0x00RRGGBB - first two digits are skipped.
    #
    color::UInt32
    #
    # @inharitable
    # Organism's personal memory. Is used in any possible way.
    #
    mem::Dict{Int16, Int16}
    #
    # Organism's position in a 2D world. Starts from (1,1) 
    # ends with (WORLD_WIDTH, WORLD_HEIGHT) configurations.
    #
    pos::Helper.Point
    #
    # Adds events listening/firing logic to the organism.
    #
    observer::Event.Observer
  end
  #
  # Creates new organism with default settings and empty code.
  # @param pos Position of organism
  # @return {Creature}
  #
  function create(pos::Helper.Point = Helper.Point(1, 1))
    #
    # This is main function of current organism. Expression 
    # below means: function (o) return true end
    #
    local code::Expr = Expr(:function, Expr(:tuple, Expr(:(::), :o, Expr(:., :Creature, Expr(:quote, :Organism)))), Expr(:block, Expr(:return, true)))
    #
    # Blocks of main function. In this case only one - main block.
    #
    local blocks::Array{Block, 1} = [Block(Helper.getTypesMap(), code.args[2].args)]
    #
    # This block below, creates variables of main function, which we created
    # in code above (local code::Expr  = ...). It also creates one block,
    # which belong to main function.
    #
    local funcs::Array{Func, 1} = [Func(code, blocks)]

    Organism(
      code,                                                                                  # code
      eval(code),                                                                            # codeFn
      0,                                                                                     # codeSize
      0,                                                                                     # symbolId
      Array{Expr, 1}(),                                                                      # funcs
      Config.val(:ORGANISM_MUTATION_PROBABILITIES),                                          # mutationProbabilities
      Config.val(:ORGANISM_MUTATIONS_ON_CLONE),                                              # mutationsOnClone
      min(Config.val(:ORGANISM_MUTATION_PERIOD), Config.val(:ORGANISM_MAX_MUTATION_PERIOD)), # mutationPeriod
      min(Config.val(:ORGANISM_MUTATION_AMOUNT), Config.val(:ORGANISM_MAX_MUTATION_AMOUNT)), # mutationAmount
      Config.val(:ORGANISM_START_ENERGY),                                                    # energy
      Config.val(:ORGANISM_START_COLOR),                                                     # color
      Dict{Int16, Int16}(),                                                                  # mem
      pos,                                                                                   # pos
      Event.create()                                                                         # observer
    )
  end
  #
  # TODO: describe organism's task function
  #
  function born(org::Creature.Organism, id::UInt)
    #
    # -----------------------------------------------------------------------
    # This is main loop, where organism lives. It's body will be changed soon
    # by mutations. This loop must be after ambedded functions.
    #
    return function ()
      oldCode = org.codeFn
      orgId   = "org-$(id)"
      #
      # TODO: describe organism's main loop
      #
      while true
        produce()
        #
        # It's okay if organism has errors and throws exceptions. It's possible
        # that these errors will be fixed by future mutations.
        #
        try
          org.codeFn(org)
          if org.codeFn !== oldCode
            oldCode = org.codeFn
          end
        catch e
          # TODO: what we have to do with code errors?
        end
      end
    end
  end

  #
  # @oapi
  # eg - means Energy Get. Short name to help organism find this name faster.
  # Checks if specified point with (x,y) coordinates has an energy value.
  # Possible values [0:typemax(Int)]. 0 means no energy.
  # @param org Current organism
  # @param x X coordinate
  # @param y Y coordinate
  # @return {UInt} Energy value
  #
  function getEnergy(org::Organism, x::Int, y::Int)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" will be contained amount of energy.
    #
    retObj = Helper.RetObj()
    #
    # Listener of "getenergy" should set amount of energy in retObj.ret
    # Possible values [0...typemax(Int)]
    #
    Event.fire(org.observer, "getenergy", org, Helper.Point(x, y), retObj)
    #
    # Return value
    #
    retObj.ret
  end
  #
  # @oapi
  # el - means get Energy Left. Short name to help organism find this name faster.
  # Grabs energy from the left point. Grabbibg means decrease energy at point
  # and increase it at organism.
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eatLeft(org::Organism, amount::Int) _grabEnergy(org, left, amount) end
  #
  # @oapi
  # er - means get Energy Right. Short name to help organism find this name faster.
  # Grabs energy from the right point.
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eatRight(org::Organism, amount::Int) _grabEnergy(org, right, amount) end
  #
  # @oapi
  # eu - means get Energy Up. Short name to help organism find this name faster.
  # Grabs energy from the up point.
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eatUp(org::Organism, amount::Int) _grabEnergy(org, up, amount) end
  #
  # @oapi
  # ed - means get Energy Down. Short name to help organism find this name faster.
  # Grabs energy from the down point.
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {Int} Amount of grabbed energy
  #
  function eatDown(org::Organism, amount::Int) _grabEnergy(org, down, amount) end
  #
  # @oapi
  # @param org Current organism
  # sl - means make Step Left. Short name to help organism find this name faster.
  # Makes one step left. It decreases organism's x coodinate by 1.
  #
  function stepLeft(org::Organism) Event.fire(org.observer, "stepleft", org) end
  #
  # @oapi
  # @param org Current organism
  # sr - means make Step Right. Short name to help organism find this name faster.
  # Makes one step right. It increases organism's x coodinate by 1.
  #
  function stepRight(org::Organism) Event.fire(org.observer, "stepright", org) end
  #
  # @oapi
  # @param org Current organism
  # su - means make Step Up. Short name to help organism find this name faster.
  # Makes one step up. It decrease organism's y coodinate by 1.
  #
  function stepUp(org::Organism) Event.fire(org.observer, "stepup", org) end
  #
  # @oapi
  # @param org Current organism
  # sd - means make Step Down. Short name to help organism find this name faster.
  # Makes one step down. It increase organism's y coodinate by 1.
  #
  function stepDown(org::Organism)
    Event.fire(org.observer, "stepdown", org)
  end
  #
  # @oapi
  # @param org Current organism
  # c - means Clone. Short name to help organism find this name faster.
  # Makes organism clone. During cloning new organism will get few
  # mutations. It will be a difference from father's organism. This
  # function should find "free" place for new organism around it.
  # If there is no "free" place, then cloning will be declined.
  # TODO: this function is under question
  #function clone(org::Organism) Event.fire(org.observer, "clone", org) end

  #
  # Universal method for grabbing energy from the world. It grabs at
  # the position up, left, bottom or right from current organism.
  # @param org      Current organism
  # @param dir      Direction Enum(left, right, up, down)
  # @param amount   Amount of grabbed energy
  # @param amount   Amount of energy to grab
  #
  function _grabEnergy(org::Organism, dir::DIRECTION, amount::Int)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" key will be contained amount of grabbed energy.
    #
    local retObj::Helper.RetObj = Helper.RetObj()
    #
    # Listener of "grab$dir" should set amount of energy in retObj.ret
    # Possible values [0...amount]
    #
    Event.fire(org.observer, string("grab", dir), org, amount, retObj)
    #
    # We can't exceed max amount of energy
    #
    org.energy = min(org.energy + retObj.ret, Config.val(:ORGANISM_MAX_ENERGY))
  end
end