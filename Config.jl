#
# Applcation wide configuration. Simuates static fields in OOP world.
# Contains configurations for entire application. It should be possible
# to change some parameter here and the object, which contains it, updates
# it's state.
# TODO: describes sections and keys structure
#
# @singleton
# @author DeadbraiN
#
module Config
  export save
  export load
  export val

  #
  # Sections...
  # 
  export MUTATOR
  export SCRIPT
  export ORGANISM
  export WORLD 
  export CONNECTION
  #
  # Keys id's in MUTATOR section
  #
  export ADD_CHANGE
  export FUNC_MAX_ARGS
  export MUTATIONS_ON_CLONE
  export MUTATE_AFTER_TIMES
  export MUTATE_AMOUNT
  #
  # Keys id's in SCRIPT section
  #
  export BLOCKS_START_INDEX
  export FUNC_PREFIX
  export VAR_PREFIX
  #
  # Keys id's in ORGANISM section
  #
  export START_AMOUNT
  export START_ENERGY
  export MAX_ENERGY
  export DECREASE_AFTER_TIMES
  export DECREASE_VALUE
  export CURRENT_ID
  #
  # Keys id's in WORLD section
  #
  export WIDTH
  export HEIGHT
  export FRAME_DELAY
  export BACK_COLOR
  export IPS
  #
  # Keys id's in CONNECTION section
  #
  export SERVER_PORT

  #
  # Small hack for saving/loading data from/to the data file
  #
  type Data
    d::Dict{Int64, Dict{Int64, Any}}
  end

  #
  # Sections id's
  #
  const MUTATOR              = 1
  const SCRIPT               = 2
  const ORGANISM             = 3
  const WORLD                = 4
  const CONNECTION           = 5
  #
  # Keys id's in MUTATOR section. Description is provided below...
  #
  const ADD_CHANGE           = 1
  const FUNC_MAX_ARGS        = 2
  const MUTATIONS_ON_CLONE   = 3
  const MUTATE_AFTER_TIMES   = 4
  const MUTATE_AMOUNT        = 5
  #
  # Keys id's in SCRIPT section. Description is provided below...
  #
  const BLOCKS_START_INDEX   = 1
  const FUNC_PREFIX          = 2
  const VAR_PREFIX           = 3
  #
  # Keys id's in ORGANISM section. Description is provided below...
  #
  const START_AMOUNT         = 1
  const START_ENERGY         = 2
  const MAX_ENERGY           = 3
  const DECREASE_AFTER_TIMES = 4
  const DECREASE_VALUE       = 5
  const CURRENT_ID           = 6
  #
  # Keys id's in WORLD section. Description is provided below...
  #
  const WIDTH                = 1
  const HEIGHT               = 2
  const FRAME_DELAY          = 3
  const BACK_COLOR           = 4
  const IPS                  = 5
  #
  # Keys id's in CONNECTION section. Description is provided below...
  #
  const SERVER_PORT          = 1

  #
  # Saves all data into the file. If file exists, it will
  # be overrided
  # @param file File name
  #
  function save(file::ASCIIString = "config.data")
    local io = null
    try
      io = open(file, "w")
      serialize(io, _data.d)
    catch(e)
      println("Config.save(): $e")
    finally
      if sock !== null close(io) end
    end
  end
  #
  # Loads all data from the file
  # @param file File name
  #
  function load(file::ASCIIString = "config.data")
    local io = null
    try
      io = open(file)
      _data.d = deserialize(io)
    catch(e)
      println("Config.load(): $e")
    finally
      if sock !== null close(io) end
    end
  end
  #
  # Returns configuration value according to section and key
  # @param section Configuration section
  # @param key Key inside the section
  # @return {Any|null} Value of key in specified section or null
  # in case of incorrect section or key
  #
  function val(section::Int64, key::Int64)
    if (!haskey(_data.d, section) || !haskey(_data.d[section], key))
      return null
    end
    _data.d[section][key]
  end
  #
  # Sets the value by section and key. Works in pair with 
  # getter val() function
  # @param section Configuration section
  # @param key Key inside the section
  # @return Operation boolean result
  #
  function val(section::Int64, key::Int64, value::Any)
    if (!haskey(_data.d, section) || !haskey(_data.d[section], key))
      return false
    end
    _data.d[section][key] = value
    true
  end
  #
  # All configuration data
  #
  _data = Data(
    Dict{Int64, Dict{Int64, Any}}(
      MUTATOR    => Dict{Int64, Any}(
        #
        # {Array} Probabilities with wich mutator decides what to do: add,
        #         or change existing construction of the script. 
        #         Depending on this values, organism may have different
        #         strategies of living. For example: if add value is bigger 
        #         then del and change, then it will be grow up all the time.
        #         If del value is bigger then other, then it will be decreased
        #         to one line code and will die.
        #
        ADD_CHANGE           => [1,10],
        #
        # {UInt8} Maximum amount of function parameters in orgamism's script.
        # It's used in Mutator during new function creation. Example:
        #
        #     function func12(var24, var25);end
        #
        # In example above there are two arguments. This amount of arguments
        # must be less then funcMaxArgs
        #
        FUNC_MAX_ARGS        => UInt8(10),
        #
        # {Uint} Amount of mutations, which will be applied to arganism after
        # clonning.
        #
        MUTATIONS_ON_CLONE   => UInt(100),
        #
        # Amount of iterations within organism's life loop, after that we 
        # do mutations according to MUTATE_AMOUNT config amount. If 0, then
        # mutations will be disabled.
        #
        MUTATE_AFTER_TIMES   => UInt(0),
        #
        # Value, which will be used like amount of mutations per 
        # MUTATE_AFTER_TIMES iterations. 0 is a possible value if
        # we want to disable mutations.
        #
        MUTATE_AMOUNT        => UInt(2)
      ),
      SCRIPT     => Dict{Int64, Any}(
        #
        # It's possible to skip some reserved blocks of code in Script.Code.blocks 
        # property. For example, functions block.
        #
        BLOCKS_START_INDEX   => 2,
        #
        # Prefix for all custom functions. Final name of the function will be: func[num]
        #
        FUNC_PREFIX          => "func",
        #
        # Prefix for all variables. Final name of the function will be: var[num]
        #
        VAR_PREFIX           => "var"
      ),
      ORGANISM   => Dict{Int64, Any}(
        #
        # Amount of organisms on program start
        #
        START_AMOUNT         => UInt(100),
        #
        # {Uint} Amount of energy for first organisms. They are like Adam and 
        # Eve. It means that these organism were created by operator and not
        # by evolution.
        #
        START_ENERGY         => UInt(50000),
        #
        # Maximum amount of energy, which one organism may contains
        #
        MAX_ENERGY           => UInt(100000),
        #
        # Amount of iterations within organism's life loop, after that we decrease
        # amount of energy into DECREASE_VALUE points. If 0, then energy decreasing 
        # will be disabled.
        #
        DECREASE_AFTER_TIMES => UInt(10000000),
        #
        # Value, which will be descreased in organism after "descreaseAfterTimes" period
        #
        DECREASE_VALUE       => UInt(100),
        #
        # Current organism unique id. Is used like increment for setting id's for new organisms
        #
        CURRENT_ID           => UInt(0)

      ),
      WORLD      => Dict{Int64, Any}(
        #
        # World width
        #
        WIDTH                => UInt(300),
        #
        # World height
        #
        HEIGHT               => UInt(300),
        #
        # Delay between requests for obtaining remote world region.
        # This parameter affects frames per second in a window canvas.
        # Value in seconds. It's possible to have zero based value. In
        # this case requests will be posted one by one without delays.
        # So the speed for 0 delay depends only on network speed.
        #
        FRAME_DELAY          => 2,
        #
        # RGB, background color of the canvas, where organisms will be shown
        #
        BACK_COLOR           => UInt32(0),
        #
        # IPS (Iteration Per Second). Amount of iterations, which were
        # occures within one second. One iteration means one for all 
        # organisms in a World. This value will be set many times in main
        # Manager's loop.
        #
        IPS                  => float(0)
      ),
      CONNECTION => Dict{Int64, Any}(
        #
        # Starting number for TCP/IP listening
        #
        SERVER_PORT          => Int(2000)
      )
    )
  )
end