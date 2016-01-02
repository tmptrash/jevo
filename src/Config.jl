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
# TODO: describe annotations: @read @write (config property as shared data between modules)
# TODO: may be move @read @write properties to separate module?
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
    # Format: [
    #     add     - Probability of adding of new character to the code
    #     change  - Probability of changing existing character in a code
    #     delete  - Probability of deleting of a character in a code
    #     clone   - Probability for amount of mutations on clone
    #     period  - Probability of period of organism mutations
    #     amount  - Probability of amount of mutations per period
    # ]
    # Probabilities with wich mutator decides what to do: add,
    # change, delete character of the code; change amount of 
    # mutations or change mutations period... Depending on these
    # values, organism may have different strategies of living.
    # For example: if add value is bigger then del and change, 
    # then it will be grow up all the time. If del value is 
    # bigger then other, then it will be decreased to one line 
    # code and will die.
    #
    ORGANISM_MUTATION_PROBABILITIES::Array{Int}
    #
    # {Uint} Amount of mutations, which will be applied to arganism after
    # clonning.
    #
    ORGANISM_MUTATIONS_ON_CLONE::Int
    #
    # Maximum amount of mutations on clone
    #
    ORGANISM_MAX_MUTATIONS_ON_CLONE::Int
    #
    # Amount of iterations within organism's life loop, after that we 
    # do mutations according to MUTATE_AMOUNT config amount. If 0, then
    # mutations will be disabled.
    #
    ORGANISM_MUTATION_PERIOD::Int
    #
    # Maximum period for mutations. Related to ORGANISM_MUTATION_PERIOD config
    #
    ORGANISM_MAX_MUTATION_PERIOD::Int
    #
    # Value, which will be used like amount of mutations per 
    # MUTATE_AFTER_TIMES iterations. 0 is a possible value if
    # we want to disable mutations.
    #
    ORGANISM_MUTATION_AMOUNT::Int
    #
    # Maximum amount of mutations per one mutation period
    #
    ORGANISM_MAX_MUTATION_AMOUNT::Int
    #
    # Amount of organisms on program start
    # TODO: is not used now!
    ORGANISM_START_AMOUNT::Int
    #
    # Amount of energy for first organisms. They are like Adam and 
    # Eve. It means that these organism were created by operator and not
    # by evolution.
    #
    ORGANISM_START_ENERGY::Int
    #
    # Maximum amount of energy, which one organism may contains
    # TODO: not used now!
    #
    ORGANISM_MAX_ENERGY::Int
    #
    # This is amount of a code array. It's fixed, at least now to improve mutations
    # speed.
    # TODO: make this size dynamic. Every time code length riaches array size,
    # TODO: it should be increased to the same size (*2) ans so on.
    #
    ORGANISM_CODE_BUF_SIZE::Int
    #
    # Amount of iterations within organism's life loop, after that we decrease
    # amount of energy into DECREASE_VALUE points. If 0, then energy decreasing 
    # will be disabled.
    #
    ORGANISM_DECREASE_PERIOD::Int
    #
    # Value, which will be descreased in organism after "descreaseAfterTimes" period
    #
    ORGANISM_DECREASE_VALUE::Int
    #
    # @read @write Current organism unique id. Is used like increment for setting id's for new organisms
    #
    ORGANISM_CURRENT_ID::UInt
    #
    # Bonus energy for good mutation. For mistakes there is no energy bonus
    #
    ORGANISM_GOOD_MUTATION_ENERGY::Int
    #
    # Amount of energy, which is added if organism clone itself. This is how we promote clonning
    #
    ORGANISM_CLONE_ENERGY::Int
    #
    # Minimal text code on julia language, which is used for new organisms at the very beginning
    # stage of evolution. Before first stable organisms will be produced. By default, organism may
    # produce it's copies and nothing more.
    #
    ORGANISM_START_CODE::Array{ASCIIString}
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
    WORLD_IPS::Int
    #
    # Maximum amount of organisms in a world. If some organisms will
    # try to clone itself, then it will not happen.
    #
    WORLD_MAX_ORGANISMS::Int
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
      [10,100,1,1,1,1],          # ORGANISM_MUTATION_PROBABILITIES (add,change,del,clone,period,amount)
      1,                         # ORGANISM_MUTATIONS_ON_CLONE
      100,                       # ORGANISM_MAX_MUTATIONS_ON_CLONE
      1,                         # ORGANISM_MUTATION_PERIOD
      1000000,                   # ORGANISM_MAX_MUTATION_PERIOD
      1,                         # ORGANISM_MUTATION_AMOUNT
      100,                       # ORGANISM_MAX_MUTATION_AMOUNT
      100,                       # ORGANISM_START_AMOUNT
      1000,                      # ORGANISM_START_ENERGY
      100000,                    # ORGANISM_MAX_ENERGY
      200,                       # ORGANISM_CODE_BUF_SIZE
      100000,                    # ORGANISM_DECREASE_PERIOD
      10,                        # ORGANISM_DECREASE_VALUE
      UInt(0),                   # ORGANISM_CURRENT_ID
      50,                        # ORGANISM_GOOD_MUTATION_ENERGY
      100,                       # ORGANISM_CLONE_ENERGY
      [" "],                     # ORGANISM_START_CODE
      300,                       # WORLD_WIDTH
      200,                       # WORLD_HEIGHT
      1,                         # WORLD_FRAME_DELAY
      UInt32(0),                 # WORLD_BACK_COLOR
      0,                         # WORLD_IPS
      3000,                      # WORLD_MAX_ORGANISMS
      2000                       # CONNECTION_SERVER_PORT
    )
  )
end