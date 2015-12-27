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

  export Code
  export Organism
  export RetObj

  export create
  export mutate
  export born
  #
  # Describes one organism. In general it consists of energy, world
  # position and many inheritable properties like code, mutationPeriod
  # and so on...
  #
  type Organism
    #
    # @inheritable
    # Mutations probability. Add, change, delete. e.g.: [1,10,2]
    # means, that "add" mutation will be 10 times rare then "change"
    # and 2 times rare then "delete" mutations.
    #
    mutationProbabilities::Array{Int}
    #
    # @inheritable
    # Code of organism. String on Julia language.
    #
    code::ASCIIString
    #
    # @inheritable
    # Compiled and covered by function version of code. This
    # code is running in a loop all the time.
    #
    fnCode::Function
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
  function create(pos::Helper.Point = Helper.Point(1, 1))
    local code::ASCIIString = Config.val(:ORGANISM_START_CODE)

    Organism(
      Config.val(:ORGANISM_MUTATION_PROBABILITIES),  # mutationProbabilities
      code,                                          # code
      eval(parse(code)),                             # fnCode
      Config.val(:ORGANISM_MUTATIONS_ON_CLONE),      # mutationsOnClone
      Config.val(:ORGANISM_MUTATION_PERIOD),         # mutationPeriod
      Config.val(:ORGANISM_MUTATION_AMOUNT),         # mutationAmount
      Int(Config.val(:ORGANISM_START_ENERGY)),       # energy
      pos,                                           # pos
      Event.create()                                 # observer
    )
  end
  #
  # Creates copy of specified organism. Don't forget to 
  # set a position of new (created) organism.
  # @param org Organism to copy
  # @return {Creature}
  #
  function copy(org::Organism)
    Organism(
      org.mutationProbabilities,                     # mutationProbabilities
      org.code,                                      # code
      eval(parse(org.code)),                         # fnCode
      org.mutationsOnClone,                          # mutationsOnClone
      org.mutationPeriod,                            # mutationPeriod
      org.mutationAmount,                            # mutationAmount
      org.energy,                                    # energy
      org.pos,                                       # pos
      Event.create()                                 # observer
    )
  end
  # TODO: update description
  # Produces one add/change/del mutation on code and returns it's modified version.
  # Probabilities array is an array of three items: add,change,del values. e.g.:
  # [1,2,1] means that add and del mutations will be twice less then change one.
  # Character for adding and changing is in visible ASCII range - 32:126. see ASCII
  # table for details. Change mutation is the most frequent, so it should be first.
  # @param org Organism, which code we have to modify
  # @param prob Probability array (add,change,del). e.g.: [X,X,X]
  #
  function mutate(org::Organism, prob::Array{Int})
    pIndex = Helper.getProbIndex(prob)
    len    = length(org.code) - 1
    i      = rand(2:len)

    if     pIndex === 2 org.code             = string(org.code[1:i-1], Char(rand(32:126)), org.code[i+1:end])
    elseif pIndex === 1 org.code             = string(org.code[1:i-1], Char(rand(32:126)), org.code[i:end])
    elseif pIndex === 3 && len > 2 org.code  = string(org.code[1:i-1], org.code[i+1:end])
    elseif pIndex === 4 org.mutationsOnClone = rand(0:Config.val(:ORGANISM_MAX_MUTATIONS_ON_CLONE))
    elseif pIndex === 5 org.mutationPeriod   = rand(0:Config.val(:ORGANISM_MAX_MUTATION_PERIOD))
    elseif pIndex === 6 org.mutationAmount   = rand(0:Config.val(:ORGANISM_MAX_MUTATION_AMOUNT))
    end

    #
    # Updates compiled version of the code. Only valid code will be applied,
    # because exception will be fired in case of error organismcode.
    # TODO: if code is valid, then we have to check in on remote controlled
    # TODO: worker to prevent infinite loop.
    #
    if pIndex < 4
      try
        #
        # This function must be anonymous, because it's used for comparison
        # with other functions for other organisms. If their names are equal
        # and they are in the same module, then === operator returns true.
        # @param o Associated with this code organism
        #
        org.fnCode = eval(parse("function(o) $(org.code) end"))
      end
    end
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
      oldCode = org.fnCode
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
          org.fnCode(org)
          #
          # TODO: temporary code. shows correct organisms
          #
          if org.fnCode !== oldCode
            #
            # If parsed code doesn't contain mistakes, then current organism
            # should be fed with bonus energy.
            #
            org.energy += Config.val(:ORGANISM_GOOD_MUTATION_ENERGY)
            oldCode = org.fnCode
          end
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
  function eg(org::Organism, x::Int, y::Int) _getEnergy(org, x, y) end
  #
  # @oapi
  # el - means get Energy Left. Short name to help organism find this name faster.
  # Grabs energy from the left point. Grabbibg means decrease energy at point
  # and increase it at organism.
  # @param org Current organism
  # @param amount Amount of energy to grab
  # @return {UInt} Amount of grabbed energy
  #
  function el(org::Organism, amount::UInt) _grabEnergy(org, "left", amount) end
  #
  # @oapi
  # er - means get Energy Right. Short name to help organism find this name faster.
  # Grabs energy from the right point.
  # @param org Current organism
  # @param amount Amount of energy to grab
  # @return {UInt} Amount of grabbed energy
  #
  function er(org::Organism, amount::UInt) _grabEnergy(org, "right", amount) end
  #
  # @oapi
  # eu - means get Energy Up. Short name to help organism find this name faster.
  # Grabs energy from the up point.
  # @param org Current organism
  # @param amount Amount of energy to grab
  # @return {UInt} Amount of grabbed energy
  #
  function eu(org::Organism, amount::UInt) _grabEnergy(org, "up", amount) end
  #
  # @oapi
  # ed - means get Energy Down. Short name to help organism find this name faster.
  # Grabs energy from the down point.
  # @param org Current organism
  # @param amount Amount of energy to grab
  # @return {Int} Amount of grabbed energy
  #
  function ed(org::Organism, amount::UInt) _grabEnergy(org, "down", amount) end
  #
  # @oapi
  # @param org Current organism
  # sl - means make Step Left. Short name to help organism find this name faster.
  # Makes one step left. It decreases organism's x coodinate by 1.
  #
  function sl(org::Organism) _step(org, "left") end
  #
  # @oapi
  # @param org Current organism
  # sr - means make Step Right. Short name to help organism find this name faster.
  # Makes one step right. It increases organism's x coodinate by 1.
  #
  function sr(org::Organism) _step(org, "right") end
  #
  # @oapi
  # @param org Current organism
  # su - means make Step Up. Short name to help organism find this name faster.
  # Makes one step up. It decrease organism's y coodinate by 1.
  #
  function su(org::Organism) _step(org, "up") end
  #
  # @oapi
  # @param org Current organism
  # sd - means make Step Down. Short name to help organism find this name faster.
  # Makes one step down. It increase organism's y coodinate by 1.
  #
  function sd(org::Organism) _step(org, "down") end
  #
  # @oapi
  # @param org Current organism
  # c - means Clone. Short name to help organism find this name faster.
  # Makes organism clone. During cloning new organism will get few
  # mutations. It will be a difference from father's organism. This
  # function should find "free" place for new organism around it.
  # If there is no "free" place, then cloning will be declined.
  #
  function c(org::Organism) _clone(org) end

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
  function _grabEnergy(creature::Organism, dir::ASCIIString, amount::UInt)
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

    retObj.ret
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