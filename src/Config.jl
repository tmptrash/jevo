#
# Applcation wide configuration. It contains default values for 
# different settings. You may change these settings using val()
# function. Also may be used like intermodule data sharing mechanism.
# One module may set a value and other module may read it later. 
# Every configuration value may be obtained by unique key. Some
# settings are used like data containers in sense that, they
# just store the values, which may be changed many times during
# application life cicle.
#
# Usage:
#     import Config
#     ...
#     Config.val(:SECTION_ID_KEY_ID)         # returns value or nothing
#     Config.val(:SECTION_ID_KEY_ID, newVal) # sets new value - newVal
#     Config.save("config.data")             # saves all to file
#     Config.load("config.data")             # loads all from file
#
# @singleton
# @author DeadbraiN
#
module Config
  import Helper

  export save
  export load
  export val

  export Data

  #
  # Data type for storing configuration data. Is used in pair with GData
  # type. For accessing use Gonfig.val(:SYMBOL[, value]) function
  #
  type Data
    #
    # Probabilities with which mutator decides what to do: add,
    # change, delete character of the code; change amount of 
    # mutations or change mutations period... Depending on these
    # values, organism may have different strategies of living.
    # For example: if add value is bigger then del and change, 
    # then code size will be grow up all the time. If del value is 
    # bigger then other, then it will be decreased to zero lines 
    # of code and will die.
    # Format: [
    #     add          - Probability of adding of new character to the code
    #     change       - Probability of changing existing character in a code
    #     small-change - Probability of "small change" - change of expression part
    #     delete       - Probability of deleting of a character in a code
    #     clone        - Probability for amount of mutations on clone
    #     period       - Probability of period of organism mutations
    #     amount       - Probability of amount of mutations per period
    # ]
    #
    ORGANISM_MUTATION_PROBABILITIES::Array{Int}
    #
    # Amount of mutations, which will be applied to arganism after clonning.
    # Should be less then ORGANISM_MAX_MUTATIONS_ON_CLONE setting.
    #
    ORGANISM_MUTATIONS_ON_CLONE::Int
    #
    # Maximum amount of mutations on clone
    #
    ORGANISM_MAX_MUTATIONS_ON_CLONE::Int
    #
    # Amount of iterations within organism's life loop, after that we 
    # do mutations according to ORGANISM_MUTATION_AMOUNT config. If 0, then
    # mutations will be disabled. Should be less then ORGANISM_MAX_MUTATION_PERIOD
    #
    ORGANISM_MUTATION_PERIOD::Int
    #
    # Maximum period for mutations. Related to ORGANISM_MUTATION_PERIOD config
    #
    ORGANISM_MAX_MUTATION_PERIOD::Int
    #
    # Value, which will be used like amount of mutations per 
    # ORGANISM_MUTATION_PERIOD iterations. 0 is a possible value if
    # we want to disable mutations. Should be less then config
    # ORGANISM_MAX_MUTATION_AMOUNT.
    #
    ORGANISM_MUTATION_AMOUNT::Int
    #
    # Maximum amount of mutations per one mutation period. Related to
    # ORGANISM_MUTATION_AMOUNT config.
    #
    ORGANISM_MAX_MUTATION_AMOUNT::Int
    #
    # Amount of organisms we have to create on program start
    #
    ORGANISM_START_AMOUNT::Int
    #
    # Amount of energy for first organisms. They are like Adam and 
    # Eve. It means that these empty (without code) organism were created 
    # by operator and not by evolution.
    #
    ORGANISM_START_ENERGY::Int
    #
    # Maximum amount of energy, which one organism may contains. Should be
    # less then typemax(UInt32).
    #
    ORGANISM_MAX_ENERGY::Int
    #
    # Amount of iterations within organism's life loop, after that we decrease
    # amount of energy into ORGANISM_ENERGY_DECREASE_VALUE points. If 0, then energy 
    # decreasing will be disabled.
    #
    ORGANISM_ENERGY_DECREASE_PERIOD::Int
    #
    # Value, which will be descreased in organism after "descreaseAfterTimes" period
    #
    ORGANISM_ENERGY_DECREASE_VALUE::Int
    #
    # After this amount of iterations we have to kill ORGANISM_REMOVE_AMOUNT
    # organisms with minimum energy
    #
    ORGANISM_REMOVE_AFTER_TIMES::Int
    #
    # Amount of organisms, which we have to remove after every
    # ORGANISM_REMOVE_AFTER_TIMES iterations
    #
    ORGANISM_REMOVE_AMOUNT::Int
    #
    # Amount of iterations before clonning process
    #
    ORGANISM_CLONE_AFTER_TIME::Int
    #
    # Begin color of "empty" organism (organism without code).
    #
    ORGANISM_START_COLOR::UInt32
    #
    # Maximum amount of arguments in custom functions. Minimum 1.
    #
    CODE_MAX_FUNC_PARAMS::Int
    #
    # World width
    #
    WORLD_WIDTH::Int
    #
    # World height
    #
    WORLD_HEIGHT::Int
    #
    # Delay between requests for obtaining remote world region.
    # This parameter affects frames per second in a window canvas.
    # Value in seconds. It's possible to have zero based value. In
    # this case requests will be posted one by one without delays.
    # So the speed for 0 delay depends only on network speed.
    #
    WORLD_FRAME_DELAY::Int
    #
    # IPS (Iteration Per Second). Amount of iterations, which were
    # occures within one second. One iteration means one for all 
    # organisms in a World. This value will be set many times in main
    # Manager's loop.
    #
    WORLD_IPS::Int
    #
    # Maximum amount of organisms in a world. If some organisms will
    # try to clone itself, when entire amount of organisms are equal
    # this value, then it(clonning) will not happen.
    #
    WORLD_MAX_ORGANISMS::Int
    #
    # Minimum amount of orgaisms in a world. If this value riached,
    # then remove minimum energetic organisms mechanism will be disabled
    # until total amount will be more then this value.
    #
    WORLD_MIN_ORGANISMS::Int
    #
    # Amount of energy blocks in a world. Blocks will be placed in a
    # random way...
    #
    WORLD_START_ENERGY_BLOCKS::Int
    #
    # Amount of energy in every block. See WORLD_START_ENERGY_BLOCKS
    # config for details.
    #
    WORLD_START_ENERGY_AMOUNT::UInt32
    #
    # World scaling. On todays monitors pixel are so small, so we have
    # to zoom them with a coefficient.
    #
    WORLD_SCALE::Int
    #
    # Period of making automatic backup of application. In minutes
    #
    BACKUP_PERIOD::Int
    #
    # Width of statistics window
    # TODO: should be removed from here. It doesn't related to Manager
    STAT_WIDTH::Int
    #
    # Height of statistics window
    #  TODO: should be removed from here. It doesn't related to Manager
    STAT_HEIGHT::Int
    #
    # Delay between requests for obtaining remote statistics.
    # This parameter affects frames per second in a window label.
    # Value in seconds. It's possible to have zero based value. In
    # this case requests will be posted one by one without delays.
    # So the speed for 0 delay depends only on network speed.
    # TODO: should be removed from here. It doesn't related to Manager
    STAT_FRAME_DELAY::Int
    #
    # Starting number for TCP/IP listening
    #
    CONNECTION_SERVER_PORT::Int
  end
  #
  # Just a wrapper for Data type to have an ability to update
  # global _data.d field after loading from a file.
  #
  type GData
    d::Data
  end

  #
  # Saves all data into the file. If file exists, it will
  # be overrided
  # @param file File name
  # @return {Bool} saving result
  #
  function save(file::ASCIIString = "config.data")
    Helper.save(_data.d, file)
  end
  #
  # Loads all data from the file
  # @param file File name
  # @return {Bool} loading result
  #
  function load(file::ASCIIString = "config.data")
      try
        _data.d = Helper.load(file)
      catch e
        Helper.warn("Config.load(): $e")
        return false
      end

      true
  end
  #
  # Formats configuration for usable user's view
  # @return {ASCIIString}
  #
  function format()
    local fields::Array{Symbol, 1} = fieldnames(Data)
    local i::Symbol
    local arr::Array{ASCIIString, 1} = []

    for i in fields
      push!(arr, string(i) * ": " * string(getfield(_data.d, i)))
    end

    arr
  end
  #
  # Returns configuration value according to unique key. In
  # case of incorrect key nothing will be returned.
  # @param Field's name symbol
  # @return {Any|nothing} Value of key in specified section
  # in case of incorrect section or key returns nothing
  #
  function val(name::Symbol)
    try
      getfield(_data.d, name)
    catch(e)
      Helper.warn("Getter Config.val(): $e")
    end
  end
  #
  # Sets the value by unique key. Works in pair with getter 
  # val() function
  # @param key Unique key of the value
  # @param value Value we have to set
  # @return Operation boolean result
  #
  function val(name::Symbol, value::Any)
    try
      setfield!(_data.d, name, value)
    catch(e)
      Helper.warn("Setter Config.val(): $e")
    end
  end
  #
  # Global configuration data
  #
  global _data = GData(
    Data(
      [100,300,99,0,1,1,1],      # ORGANISM_MUTATION_PROBABILITIES (add,change,del,small-change,clone,period,amount)
      0,                         # ORGANISM_MUTATIONS_ON_CLONE
      100,                       # ORGANISM_MAX_MUTATIONS_ON_CLONE
      800,                       # ORGANISM_MUTATION_PERIOD
      1000,                      # ORGANISM_MAX_MUTATION_PERIOD
      1,                         # ORGANISM_MUTATION_AMOUNT
      100,                       # ORGANISM_MAX_MUTATION_AMOUNT
      500,                       # ORGANISM_START_AMOUNT
      5000,                      # ORGANISM_START_ENERGY
      100000,                    # ORGANISM_MAX_ENERGY. Should be less then typemax(UInt32)
      1000,                      # ORGANISM_ENERGY_DECREASE_PERIOD
      1,                         # ORGANISM_ENERGY_DECREASE_VALUE
      50,                        # ORGANISM_REMOVE_AFTER_TIMES
      20,                        # ORGANISM_REMOVE_AMOUNT
      20,                        # ORGANISM_CLONE_AFTER_TIME
      UInt32(0x00FFFFFF),        # ORGANISM_START_COLOR
      2,                         # CODE_MAX_FUNC_PARAMS
      100,                       # WORLD_WIDTH
      100,                       # WORLD_HEIGHT
      0,                         # WORLD_FRAME_DELAY
      0,                         # WORLD_IPS
      800,                       # WORLD_MAX_ORGANISMS
      200,                       # WORLD_MIN_ORGANISMS
      2000,                      # WORLD_START_ENERGY_BLOCKS
      UInt32(100),               # WORLD_START_ENERGY_AMOUNT
      3,                         # WORLD_SCALE
      3,                         # BACKUP_PERIOD
      650,                       # STAT_WIDTH
      500,                       # STAT_HEIGHT
      1,                         # STAT_FRAME_DELAY
      2000                       # CONNECTION_SERVER_PORT
    )
  )
end