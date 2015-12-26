#
# Applcation wide configuration. It contains default values from the
# scratch. It's also possible to change them using val() function.
# May be used not only like configuration and also like intermodule
# data object. One module may set a value and other module may read 
# it later. Every configuration value may be obtained by setting it's
# section and key. This is like absolute address of every value.
#
# Usage:
#     using Config
#     ...
#     Config.val(:SECTION_ID_KEY_ID)         # returns value or null
#     Config.val(:SECTION_ID_KEY_ID, newVal) # sets new value
#     Config.save("config.data")             # saves all to file
#     Config.load("config.data")             # loads all from file
#
# @singleton
# @author DeadbraiN
#
module Config
  export save
  export load
  export val

  export Data

  #
  # Data type for storing configuration data. Is used in pair with GData
  # type. For accessing use Gonfig.val(:SYMBOL[, value])
  #
  type Data
    #
    # {Array} Probabilities with wich mutator decides what to do: add,
    #         change and delete existing construction of the script. 
    #         Depending on this values, organism may have different
    #         strategies of living. For example: if add value is bigger 
    #         then del and change, then it will be grow up all the time.
    #         If del value is bigger then other, then it will be decreased
    #         to one line code and will die.
    #
    ORGANISM_ADD_CHANGE::Array{Int}
    #
    # {Uint} Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    ORGANISM_MUTATIONS_ON_CLONE::UInt
    #
    # Amount of iterations within organism's life loop, after that we 
    # do mutations according to MUTATE_AMOUNT config amount. If 0, then
    # mutations will be disabled.
    #
    ORGANISM_MUTATE_AFTER_TIMES::UInt
    #
    # Value, which will be used like amount of mutations per 
    # MUTATE_AFTER_TIMES iterations. 0 is a possible value if
    # we want to disable mutations.
    #
    ORGANISM_MUTATE_AMOUNT::UInt
    #
    # Amount of organisms on program start
    #
    ORGANISM_START_AMOUNT::UInt
    #
    # {Uint} Amount of energy for first organisms. They are like Adam and 
    # Eve. It means that these organism were created by operator and not
    # by evolution.
    #
    ORGANISM_START_ENERGY::UInt
    #
    # Maximum amount of energy, which one organism may contains
    #
    ORGANISM_MAX_ENERGY::UInt
    #
    # Amount of iterations within organism's life loop, after that we decrease
    # amount of energy into DECREASE_VALUE points. If 0, then energy decreasing 
    # will be disabled.
    #
    ORGANISM_DECREASE_AFTER_TIMES::UInt
    #
    # Value, which will be descreased in organism after "descreaseAfterTimes" period
    #
    ORGANISM_DECREASE_VALUE::UInt
    #
    # @read @write Current organism unique id. Is used like increment for setting id's for new organisms
    #
    ORGANISM_CURRENT_ID::UInt
    #
    # Bonus energy for good mutation. For mistakes there is no energy bonus
    #
    ORGANISM_GOOD_MUTATION_ENERGY::UInt
    #
    # World width
    #
    WORLD_WIDTH::UInt
    #
    # World height
    #
    WORLD_HEIGHT::UInt
    #
    # Delay between requests for obtaining remote world region.
    # This parameter affects frames per second in a window canvas.
    # Value in seconds. It's possible to have zero based value. In
    # this case requests will be posted one by one without delays.
    # So the speed for 0 delay depends only on network speed.
    #
    WORLD_FRAME_DELAY::Int
    #
    # RGB, background color of the canvas, where organisms will be shown
    #
    WORLD_BACK_COLOR::UInt32
    #
    # @read @write
    # IPS (Iteration Per Second). Amount of iterations, which were
    # occures within one second. One iteration means one for all 
    # organisms in a World. This value will be set many times in main
    # Manager's loop.
    #
    WORLD_IPS::UInt
    #
    # Starting number for TCP/IP listening
    #
    CONNECTION_SERVER_PORT::Int
  end
  #
  # Just a wrapper for Data type to have an ability to update
  # global _data field after loading from a file.
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
    local io  = null
    local ret = true

    try
      io = open(file, "w")
      serialize(io, _data.d)
    catch(e)
      println("Config.save(): $e")
      ret = false
    finally
      if io !== null close(io) end
    end
    ret
  end
  #
  # Loads all data from the file
  # @param file File name
  # @return {Bool} loading result
  #
  function load(file::ASCIIString = "config.data")
    local io  = null
    local ret = true

    try
      io = open(file)
      _data.d = deserialize(io)
    catch(e)
      println("Config.load(): $e")
      ret = false
    finally
      if io !== null close(io) end
    end
    ret
  end
  #
  # Returns configuration value according to section and key. In
  # case of incorrect symbol an exception will be throwed.
  # @param Field's name symbol
  # @return {Any} Value of key in specified section
  # in case of incorrect section or key
  #
  function val(name::Symbol) getfield(_data.d, name) end
  #
  # Sets the value by section and key. Works in pair with
  # getter val() function
  # @param section Configuration section
  # @param key Key inside the section
  # @return Operation boolean result
  #
  function val(name::Symbol, value::Any) setfield!(_data.d, name, value) end
  #
  # Global configuration data
  #
  global _data = GData(
    Data(
      [1,100,2],        # ORGANISM_ADD_CHANGE
      UInt(100),        # ORGANISM_MUTATIONS_ON_CLONE
      UInt(1),          # ORGANISM_MUTATE_AFTER_TIMES
      UInt(1),          # ORGANISM_MUTATE_AMOUNT
      UInt(100),        # ORGANISM_START_AMOUNT
      UInt(50000),      # ORGANISM_START_ENERGY
      UInt(100000),     # ORGANISM_MAX_ENERGY
      UInt(1),          # ORGANISM_DECREASE_AFTER_TIMES
      UInt(10),         # ORGANISM_DECREASE_VALUE
      UInt(0),          # ORGANISM_CURRENT_ID
      UInt(100),        # ORGANISM_GOOD_MUTATION_ENERGY
      UInt(300),        # WORLD_WIDTH
      UInt(300),        # WORLD_HEIGHT
      2,                # WORLD_FRAME_DELAY
      UInt32(0),        # WORLD_BACK_COLOR
      UInt(0),          # WORLD_IPS
      Int(2000)         # CONNECTION_SERVER_PORT
    )
  )
end