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
  import Config

  export VAR_AMOUNT
  export VARS_AMOUNT
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
  export idLeft
  export idRight
  export idUp
  export idDown
  #
  # Amount of embedded variables for one type
  #
  const VAR_AMOUNT = 5
  #
  # All variables amount
  #
  const VARS_AMOUNT = length(Helper.SUPPORTED_TYPES) * VAR_AMOUNT
  #
  # Enumeration for direction: up, down, left, right
  #
  @enum DIRECTION up=1 down=2 left=3 right=4
  #
  # Type, which describes a meta info about function in Expr tree.
  # It contains a reference (expr) to the function and nested blocks
  # array. Every block here is a Int and Expr pair, which is address
  # of function in memory and the reference to this function.
  #
  type MetaFunc
    expr::Expr
    blocks::Dict{Int, Expr}
  end
  #
  # Describes meta info of organism's code. It's used for making Expr()
  # tree copy and contains current function (curFn) where are in and
  # all functions dictionary (funcs). Int and MetaFunc pair is a address
  # of function in memory (the key) and reference to MetaFunc type.
  #
  type MetaCode
    curFn::Int
    funcs::Dict{Int, MetaFunc}
  end
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
    # Reference to Block's code inside Organism.code AST.
    #
    expr::Expr
    #
    # An index of code line inside current block, before which all
    # variables and functions are defined. We can't add mutations
    # before this line, because it will produce undefined variable
    # or function error. With this, all variables/functions will be
    # defined at the beginning of block.
    #
    defIndex::Int
    #
    # Constructors. Fills arguments and 1 for defIndex.
    #
    Block(vars::Dict{DataType, Array{Symbol, 1}}, expr::Expr) = new(vars, expr, 1)
    Block(vars::Dict{DataType, Array{Symbol, 1}}, expr::Expr, defIndex::Int) = new(vars, expr, defIndex)
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
    # Unique organism identifier. The same like task id.
    #
    id::UInt
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
    # Array of code functions. Is used for finding rundom functions
    # for future mutations inside them. Main function is also in this
    # array. Main function should be first in this array.
    #
    funcs::Array{Func, 1}
    #
    # @inheritable
    # Mutations probability. Add, change, delete. e.g.: [1,10,2,...]
    # means, that "add" mutation will be 10 times rare then "change"
    # and 2 times rare then "delete" mutations.
    #
    mutationProbabilities::Array{Int, 1}
    #
    # @inheritable
    # Percent of mutations from code size, which will be applied to
    # arganism after clonning.
    #
    mutationsOnClonePercent::Float64
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
    # we want to disable mutations. Percent means "Percent from
    # code size".
    #
    mutationPercent::Float64
    #
    # Organism's energy. If it's zero, then organism is die.
    # It can't be more then ORGANISM_MAX_ENERGY configuration.
    #
    energy::Int
    #
    # @inheritable
    # Color index of organism. Similar colors means relative organisms.
    # Example: 1, 345, 1200. Should be less then Dots.INDEX_MAX_ORG_COLOR
    #
    color::Int
    #
    # @inharitable
    # Organism's personal memory. Is used in any possible way.
    #
    mem::Dict{Int16, Int16}
    #
    # Organism's position in a 2D world. Starts from (1,1)
    # ends with (worldWidth, worldHeight) configurations.
    #
    pos::Helper.Point
    #
    # Organism's age. Calculated as an amount of iteration from
    # borning to the current moment. This parameter can't be changed
    # by organism itself.
    #
    age::Int
    #
    # Percent of energy, which is given to clonned organism.
    #
    cloneEnergyPercent::Float64
    #
    # Amount obtained mutations, which since organism borning. Should be
    # started from 1, because we obtain zero adaptivness.
    #
    mutationsFromStart::Int
    #
    # Adds events listening/firing logic to the organism.
    #
    observer::Event.Observer
  end
  #
  # Creates new organism with default settings and empty code.
  # @param cfg Global configuration type
  # @param id Organism unique id
  # @param pos Position of organism
  # @return {Organism}
  #
  function create(cfg::Config.ConfigData, id::UInt = UInt(0), pos::Helper.Point = Helper.Point(1, 1))
    #
    # This is main function of current organism. Expression
    # below means: function (o) return true end
    #
    local code::Expr = Expr(:function, Expr(:tuple,                         # function paraments
        Expr(:(::), :c, Expr(:., :Config,   Expr(:quote, :ConfigData))),    # c::Config.ConfigData
        Expr(:(::), :o, Expr(:., :Creature, Expr(:quote, :Organism)))),     # o::Creature.Organism
        # TODO: this lines should be added dynamically with VAR_AMOUNT constant
          Expr(:block,
            Expr(:local, Expr(:(=), Expr(:(::), :var_1, :String), randstring())),     # String variables
            Expr(:local, Expr(:(=), Expr(:(::), :var_2, :String), randstring())),
            Expr(:local, Expr(:(=), Expr(:(::), :var_3, :String), randstring())),
            Expr(:local, Expr(:(=), Expr(:(::), :var_4, :String), randstring())),
            Expr(:local, Expr(:(=), Expr(:(::), :var_5, :String), randstring())),

            Expr(:local, Expr(:(=), Expr(:(::), :var_6, :Bool),   rand(Bool))),  # Bool variables
            Expr(:local, Expr(:(=), Expr(:(::), :var_7, :Bool),   rand(Bool))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_8, :Bool),   rand(Bool))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_9, :Bool),   rand(Bool))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_10, :Bool),  rand(Bool))),

            Expr(:local, Expr(:(=), Expr(:(::), :var_11, :Int8),   rand(Int8))),     # Int8 variables
            Expr(:local, Expr(:(=), Expr(:(::), :var_12, :Int8),   rand(Int8))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_13, :Int8),   rand(Int8))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_14, :Int8),   rand(Int8))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_15, :Int8),   rand(Int8))),

            Expr(:local, Expr(:(=), Expr(:(::), :var_16, :Int16),  rand(Int16))),     # Int16 variables
            Expr(:local, Expr(:(=), Expr(:(::), :var_17, :Int16),  rand(Int16))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_18, :Int16),  rand(Int16))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_19, :Int16),  rand(Int16))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_20, :Int16),  rand(Int16))),

            Expr(:local, Expr(:(=), Expr(:(::), :var_21, :Int),    rand(Int))),     # Int64 variables
            Expr(:local, Expr(:(=), Expr(:(::), :var_22, :Int),    rand(Int))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_23, :Int),    rand(Int))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_24, :Int),    rand(Int))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_25, :Int),    rand(Int))),

            Expr(:local, Expr(:(=), Expr(:(::), :var_26, :Float64),rand(Float64))),   # Float64 variables
            Expr(:local, Expr(:(=), Expr(:(::), :var_27, :Float64),rand(Float64))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_28, :Float64),rand(Float64))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_29, :Float64),rand(Float64))),
            Expr(:local, Expr(:(=), Expr(:(::), :var_30, :Float64),rand(Float64))),

            Expr(:return, true)                                             # return true
        )
    )
    #
    # Blocks of main function. In this case only one - main block.
    #
    local blocks::Array{Block, 1} = [Block(Helper.getTypesMap(), code.args[2], VAR_AMOUNT * length(Helper.SUPPORTED_TYPES))]
    #
    # This block below, creates variables of main function, which we created
    # in code above (local code::Expr  = ...). It also creates one block,
    # which belong to main function.
    #
    local funcs::Array{Func, 1} = [Func(code, blocks)]
    local block::Block = blocks[1]
    local i::Int = 0
    local j::Int
    #
    # Fills variables meta data
    #
    map((typ::DataType) -> for j in 1:VAR_AMOUNT push!(block.vars[typ], Symbol("var_", i += 1)) end, Helper.SUPPORTED_TYPES)

    Organism(
      id,                                                                   # id
      code,                                                                 # code
      eval(code),                                                           # codeFn
      0,                                                                    # codeSize
      VAR_AMOUNT * length(Helper.SUPPORTED_TYPES),                          # symbolId
      funcs,                                                                # funcs
      copy(cfg.orgMutationProbs),                                           # mutationProbabilities
      cfg.orgCloneMutation,                                                 # mutationsOnClonePercent
      min(cfg.orgRainMutationPeriod, Config.ORGANISM_MAX_MUTATION_PERIOD),  # mutationPeriod
      min(cfg.orgRainMutationPercent, 1.0),                                 # mutationPercent
      cfg.orgStartEnergy,                                                   # energy
      cfg.orgStartColor,                                                    # color
      Dict{Int16, Int16}(),                                                 # mem
      pos,                                                                  # pos
      0,                                                                    # age
      0.5,                                                                  # cloneEnergyPercent
      1,                                                                    # mutationsFromStart
      Event.create()                                                        # observer
    )
  end
  #
  # Analog of deepcopy(org), but faster. It makes fully separate organism by
  # cloning Expr tree (org.code) and metadata (org.funcs). Copying algorithm
  # is little bit complicated: it walks through Expr tree (org.code) and
  # stores information about all functions and blocks in special dictionary
  # (MetaCode). After that, Array{Func, 1} of src organism is copied and it's
  # internal links to functions and blocks to original Expr tree will be
  # updated using this dictionary (MetaCode).
  # @param org Organism we have to copy
  # @param cfg Application configuration
  # @return {Organism} Copy of organism
  #
  function create(org::Creature.Organism, cfg::Config.ConfigData, id::UInt, pos::Helper.Point)
    local funcs::Array{Func, 1} = []
    local f::Func
    local b::Block
    local bArr::Array{Block, 1}
    local vars::Dict{DataType, Array{Symbol, 1}}
    local syms::Array{Symbol, 1}
    local dt::DataType
    #
    # This block does meta tree copy. Meta tree is a tree of
    # functions, blocks and variables related to the Julia Expr() tree
    #
    for f in org.funcs
      bArr = Block[]
      push!(funcs, Func(f.code, bArr))
      for b in f.blocks
        vars = Dict{DataType, Array{Symbol, 1}}()
        for (dt, syms) in b.vars vars[dt] = copy(syms) end
        push!(bArr, Block(vars, b.expr, b.defIndex))
      end
    end
    #
    # Organism full copy instance
    #
    Organism(
      id,                                                                   # id
      _clone(org.code, funcs),                                              # code
      function (cfg::Config.ConfigData, org::Organism) end,                 # codeFn
      org.codeSize,                                                         # codeSize
      org.symbolId,                                                         # symbolId
      funcs,                                                                # funcs
      org.mutationProbabilities,                                            # mutationProbabilities
      org.mutationsOnClonePercent,                                          # mutationsOnClonePercent
      org.mutationPeriod,                                                   # mutationPeriod
      org.mutationPercent,                                                  # mutationPercent
      org.energy,                                                           # energy
      org.color,                                                            # color
      copy(org.mem),                                                        # mem
      pos,                                                                  # pos
      0,                                                                    # age
      0.5,                                                                  # cloneEnergyPercent
      org.mutationsFromStart,                                               # mutationsFromStart
      Event.create()                                                        # observer
    )
  end
  #
  # TODO: describe this method
  # TODO: describe org
  #
  function born(org::Organism, cfg::Config.ConfigData, task::Task)
    #
    # This is main loop, where organism lives. It's body will be
    # changed soon by mutations.
    #
    while true
      #
      # This line switches back to the main task, where Virtual
      # CPU make it's job
      #
      yieldto(task)
      #
      # It's okay if organism has errors and throws exceptions. It's possible
      # that these errors will be fixed by future mutations.
      #
      try
        org.codeFn(cfg, org)
      catch e
        #showerror(STDOUT, e, catch_backtrace())
        #println("\n", org.code, "\n\n")
        #
        # Organisms with errors in a code should be less successful
        #
        if org.energy > cfg.orgEnergySpendOnError org.energy -= cfg.orgEnergySpendOnError end
        #
        # Amount of errors of current population
        #
        cfg.orgErrors += 1
      end
      cfg.codeRuns += 1
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
  # @param cfg Global configuration type
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eatLeft(cfg::Config.ConfigData, org::Organism, amount::Int) _grabEnergy(cfg, org, left, amount) end
  #
  # @oapi
  # er - means get Energy Right. Short name to help organism find this name faster.
  # Grabs energy from the right point.
  # @param cfg Global configuration type
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eatRight(cfg::Config.ConfigData, org::Organism, amount::Int) _grabEnergy(cfg, org, right, amount) end
  #
  # @oapi
  # eu - means get Energy Up. Short name to help organism find this name faster.
  # Grabs energy from the up point.
  # @param cfg Global configuration type
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eatUp(cfg::Config.ConfigData, org::Organism, amount::Int) _grabEnergy(cfg, org, up, amount) end
  #
  # @oapi
  # ed - means get Energy Down. Short name to help organism find this name faster.
  # Grabs energy from the down point.
  # @param cfg Global configuration type
  # @param org Current organism
  # @param amount Amount of energy organism wants to grab
  # @return {Int} Amount of grabbed energy
  #
  function eatDown(cfg::Config.ConfigData, org::Organism, amount::Int) _grabEnergy(cfg, org, down, amount) end
  #
  # @oapi
  # Makes one step left. It decreases organism's x coodinate by 1.
  # @param org Current organism
  #
  function stepLeft(org::Organism)
    local retObj::Helper.RetObj = Helper.RetObj()
    Event.fire(org.observer, "stepleft", org, retObj)
    retObj.ret::Bool
  end
  #
  # @oapi
  # Makes one step right. It increases organism's x coodinate by 1.
  # @param org Current organism
  #
  function stepRight(org::Organism)
    local retObj::Helper.RetObj = Helper.RetObj()
    Event.fire(org.observer, "stepright", org, retObj)
    retObj.ret::Bool
  end
  #
  # @oapi
  # Makes one step up. It decrease organism's y coodinate by 1.
  # @param org Current organism
  #
  function stepUp(org::Organism)
    local retObj::Helper.RetObj = Helper.RetObj()
    Event.fire(org.observer, "stepup", org, retObj)
    retObj.ret::Bool
  end
  #
  # @oapi
  # Makes one step down. It increase organism's y coodinate by 1.
  # @param org Current organism
  #
  function stepDown(org::Organism)
    local retObj::Helper.RetObj = Helper.RetObj()
    Event.fire(org.observer, "stepdown", org, retObj)
    retObj.ret::Bool
  end
  #
  # @oapi
  # Obtains unique id of organism on the left. If there is not organism on
  # the left, 0 will be obtained.
  # @param org Current organism
  #
  function idLeft(org::Organism) _getIntProperty(org, left, :id) end
  #
  # @oapi
  # Obtains unique id of organism on the right. If there is not organism on
  # the right, 0 will be obtained.
  # @param org Current organism
  #
  function idRight(org::Organism) _getIntProperty(org, right, :id) end
  #
  # @oapi
  # Obtains unique id of organism on the above. If there is not organism on
  # the above, 0 will be obtained.
  # @param org Current organism
  #
  function idUp(org::Organism) _getIntProperty(org, up, :id) end
  #
  # @oapi
  # Obtains unique id of organism on the below. If there is not organism on
  # the below, 0 will be obtained.
  # @param org Current organism
  #
  function idDown(org::Organism) _getIntProperty(org, down, :id) end
  #
  # @oapi
  # Obtains amount of energy of organism on the left. If there is not organism on
  # the left, 0 will be obtained.
  # @param org Current organism
  #
  function energyLeft(org::Organism) _getIntProperty(org, left, :energy) end
  #
  # @oapi
  # Obtains amount of energy of organism on the right. If there is not organism on
  # the right, 0 will be obtained.
  # @param org Current organism
  #
  function energyRight(org::Organism) _getIntProperty(org, right, :energy) end
  #
  # @oapi
  # Obtains amount of energy of organism on the above. If there is not organism on
  # the above, 0 will be obtained.
  # @param org Current organism
  #
  function energyUp(org::Organism) _getIntProperty(org, up, :energy) end
  #
  # @oapi
  # Obtains amount of energy of organism on below. If there is not organism on
  # below, 0 will be obtained.
  # @param org Current organism
  #
  function energyDown(org::Organism) _getIntProperty(org, down, :energy) end
  #
  # @oapi
  # Obtains code size of organism on the left. If there is not organism on
  # the left, 0 will be obtained.
  # @param org Current organism
  #
  function codeSizeLeft(org::Organism) _getIntProperty(org, left, :codeSize) end
  #
  # @oapi
  # Obtains code size of organism on the right. If there is not organism on
  # the right, 0 will be obtained.
  # @param org Current organism
  #
  function codeSizeRight(org::Organism) _getIntProperty(org, right, :codeSize) end
  #
  # @oapi
  # Obtains code size of organism on the above. If there is not organism on
  # the above, 0 will be obtained.
  # @param org Current organism
  #
  function codeSizeUp(org::Organism) _getIntProperty(org, up, :codeSize) end
  #
  # @oapi
  # Obtains code size of organism on the below. If there is not organism on
  # the below, 0 will be obtained.
  # @param org Current organism
  #
  function codeSizeDown(org::Organism) _getIntProperty(org, down, :codeSize) end
  #
  # @oapi
  # Obtains clone energy percent of organism on the left. If there is not organism on
  # the left, 0.0 will be obtained.
  # @param org Current organism
  #
  function cloneEnergyPercentLeft(org::Organism) _getFloatProperty(org, left, :cloneEnergyPercent) end
  #
  # @oapi
  # Obtains clone energy percent of organism on the right. If there is not organism on
  # the left, 0.0 will be obtained.
  # @param org Current organism
  #
  function cloneEnergyPercentRight(org::Organism) _getFloatProperty(org, right, :cloneEnergyPercent) end
  #
  # @oapi
  # Obtains clone energy percent of organism on the up. If there is not organism on
  # the left, 0.0 will be obtained.
  # @param org Current organism
  #
  function cloneEnergyPercentUp(org::Organism) _getFloatProperty(org, up, :cloneEnergyPercent) end
  #
  # @oapi
  # Obtains clone energy percent of organism on the bottom. If there is not organism on
  # the left, 0.0 will be obtained.
  # @param org Current organism
  #
  function cloneEnergyPercentDown(org::Organism) _getFloatProperty(org, down, :cloneEnergyPercent) end
  #
  # Returns some Int value by specified organism property.
  # @param org Organism with properties
  # @param dir Direction of searching (left, right,...)
  # @param propSymbol Symbol of needed property
  # @return {Int|0} 0 if something wrong or property is zero
  #
  function _getIntProperty(org::Creature.Organism, dir::DIRECTION, propSymbol::Symbol)
    local ret::Any = _getProperty(org, dir, propSymbol)
    Int(ret === nothing ? 0 : ret)
  end
  #
  # Returns some Float64 value by specified organism property.
  # @param org Organism with properties
  # @param dir Direction of searching (left, right,...)
  # @param propSymbol Symbol of needed property
  # @return {Float64|0.0} 0.0 if something wrong or property is zero
  #
  function _getFloatProperty(org::Creature.Organism, dir::DIRECTION, propSymbol::Symbol)
    local ret::Any = _getProperty(org, dir, propSymbol)
    Float64(ret === nothing ? 0.0 : ret)
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
  # Makes Expr tree and meta info copy. Meta info (functions, blocks and
  # variables) should be actual to copied organism's Expr tree. All links
  # to new Expr tree will be set in funcs reference.
  # @param e Reference to organism's code (main function)
  # @param funcs Reference to the meta funcstions array we have to update
  # @return {Expr} Expr tree copy
  #
  function _clone(e::Expr, funcs::Array{Func, 1})
    local f::Func
    local b::Block
    local mf::MetaFunc
    local h::Int = Int(pointer_from_objref(e))
    local mCode::MetaCode = MetaCode(h, Dict{Int, MetaFunc}(h => MetaFunc(e, Dict{Int, Expr}(Int(pointer_from_objref(e.args[2])) => e.args[2]))))
    local ex::Expr = _copy(e, mCode) # Expr tree copy
    #
    # This code updates links between meta tree and copy of Expr tree
    #
    for f in funcs
      mf     = mCode.funcs[Int(pointer_from_objref(f.code))]
      f.code = mf.expr
      for b in f.blocks b.expr = mf.blocks[Int(pointer_from_objref(b.expr))] end
    end
    #
    # References to main function and it's block should be set separately
    # because our recursive code doesn't work well with main (first) function
    #
    funcs[1].code = ex                    # Main function
    funcs[1].blocks[1].expr = ex.args[2]  # Main function's block

    ex
  end
  #
  # Entry point for recursive Expr tree copy algorithm. Idea grabbed from
  # Julia sources: https://github.com/JuliaLang/julia/blob/master/base/expr.jl
  # See copy() functions for details.
  # @param e Expr reference to have to copy
  # @param mCode Meta code of organism we are copiyng
  # @return {Expr} Expression deep copy
  #
  function _copy(e::Expr, mCode::MetaCode)
    local n::Expr = Expr(e.head);
    n.args = _copyExprArgs(e.args, mCode);
    n.typ = e.typ;
    n
  end
  #
  # Utility function, which is used in our Expr tree recursive algorithm.
  # @param arr Array of arguments of current expression (args property)
  # @param mCode Meta code of organism we are copiyng
  # @return {Array{Any, 1}} Arguments copy
  #
  function _copyExprArgs(arr::Array{Any,1}, mCode::MetaCode)
    local a::Any
    local arrCopy::Array{Any, 1} = []
    for a in arr push!(arrCopy, _copyExprs(a, mCode)) end
    arrCopy
  end
  #
  # Makes simple type copy. Simple type is Int, UInt, Symbol,...
  # @param a Simple type
  # @param mCode Meta code of organism we are copiyng
  # @return {ANY} Simple type copy
  #
  function _copyExprs(a::ANY, mCode::MetaCode) a end
  #
  # This is a heart of expression tree copying algorithm. It finds
  # functions and blocks in a code and makes their copies. It also
  # creates small dictionary with addresses of function/blocks as
  # keys and MetaFunc instances as values. This MetaCode instance
  # will be used later for updating links between meta tree (Array{Func, 1})
  # and expression tree.
  # @param e Current expression
  # @param mCode Meta code of organism we are copiyng
  # @return {Expr} Expression copy
  #
  function _copyExprs(e::Expr, mCode::MetaCode)
    local fn::MetaFunc
    local blocks::Dict{Int, Expr}
    local blockId::Int
    #
    # Don't touch this code block. It's optimized for speed
    #
    if e.head === :function
      #
      # This oldFn is used only for main function. We have to
      # recover it after exiting from nested functions
      #
      local oldFn::Int = mCode.curFn
      push!(mCode.funcs, (mCode.curFn = Int(pointer_from_objref(e))) => (fn = MetaFunc(e, Dict{Int, Expr}())))
      fn.expr = _copy(e, mCode)
      mCode.curFn = oldFn
      return fn.expr
    elseif e.head === :block
      blocks  = mCode.funcs[mCode.curFn].blocks
      blockId = Int(pointer_from_objref(e))
      push!(blocks, blockId => _copy(e, mCode))
      return blocks[blockId]
    end

    _copy(e, mCode)
  end
  #
  # Obtains unique id of nearest organism
  # @param org Current organism
  # @param dir Direction of nearest organism
  # @param sym Symbol of organism's paramety we have to grab
  #
  function _getProperty(org::Organism, dir::DIRECTION, sym::Symbol)
    #
    # This map will be used for communication between this organism and
    # some outside object. "ret" key will be contained unique organism id.
    #
    local retObj::Helper.RetObj = Helper.RetObj()
    #
    # This parameter should be grabbed from organism
    #
    retObj.ret = sym
    #
    # Listener of "prop"$dir" should obtain unique organism id in retObj.ret
    # Possible values 0|id
    #
    Event.fire(org.observer, string("prop", dir), org, retObj)

    retObj.ret
  end
  #
  # Universal method for grabbing energy from the world. It grabs at
  # the position up, left, bottom or right from current organism.
  # @param cfg Global configuration type
  # @param org      Current organism
  # @param dir      Direction Enum(left, right, up, down)
  # @param amount   Amount of grabbed energy
  # @param amount   Amount of energy to grab
  # @return {Int} Amount of eated energy
  # TODO: rename it to eatEnergy and rename an event to eatXXX
  function _grabEnergy(cfg::Config.ConfigData, org::Organism, dir::DIRECTION, amount::Int)
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
    if typeof(retObj.ret) == Int
      org.energy = min(org.energy + retObj.ret, Config.ORGANISM_MAX_ENERGY)
      return retObj.ret
    end

    0
  end
end
