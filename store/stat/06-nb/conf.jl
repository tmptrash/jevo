      [110,300,95,0,1,1,1],      # ORGANISM_MUTATION_PROBABILITIES (add,change,del,small-change,clone,period,amount)
      4,                         # ORGANISM_MUTATIONS_ON_CLONE_PERCENT
      100,                       # ORGANISM_MAX_MUTATIONS_ON_CLONE
      700,                       # ORGANISM_MUTATION_PERIOD
      10000,                     # ORGANISM_MAX_MUTATION_PERIOD
      4,                         # ORGANISM_MUTATION_AMOUNT
      100,                       # ORGANISM_MAX_MUTATION_AMOUNT
      250,                       # ORGANISM_START_AMOUNT
      7000,                      # ORGANISM_START_ENERGY
      typemax(UInt32),           # ORGANISM_MAX_ENERGY. Should be less then typemax(UInt32)
      250,                       # ORGANISM_ENERGY_DECREASE_PERIOD
      1,                         # ORGANISM_ENERGY_DECREASE_VALUE
      700,                       # ORGANISM_REMOVE_AFTER_TIMES
      5,                         # ORGANISM_REMOVE_AMOUNT
      10,                        # ORGANISM_CLONE_AFTER_TIMES
      1,                         # ORGANISM_START_COLOR
      2,                         # CODE_MAX_FUNC_PARAMS
      1920,                      # WORLD_WIDTH
      920,                       # WORLD_HEIGHT
      0,                         # WORLD_FRAME_DELAY
      0,                         # WORLD_IPS
      400,                       # WORLD_MAX_ORGANISMS
      50,                        # WORLD_MIN_ORGANISMS
      10000,                     # WORLD_START_ENERGY_BLOCKS
      UInt32(0x0001F4),          # WORLD_START_ENERGY_AMOUNT
      0.05,                      # WORLD_MIN_ENERGY_PERCENT
      400,                       # WORLD_MIN_ENERGY_CHECK_PERIOD
      1,                         # WORLD_SCALE
      1,                         # BACKUP_PERIOD
      7,                         # BACKUP_AMOUNT
      650,                       # STAT_WIDTH
      500,                       # STAT_HEIGHT
      5,                         # STAT_FRAME_DELAY
      5.0,                       # STAT_UPDATE_PERIOD
      20,                        # CONNECTION_STEP_ENERGY_PERCENT
      2000,                      # CONNECTION_SERVER_PORT (current server port)
      2001,                      # CONNECTION_FAST_SERVER_PORT (current server "fast" mode port)
      ip"127.0.0.1",             # CONNECTION_SERVER_IP
      0,                         # CONNECTION_LEFT_SERVER_PORT
      ip"127.0.0.1",             # CONNECTION_LEFT_SERVER_IP
      0,                         # CONNECTION_RIGHT_SERVER_PORT
      ip"127.0.0.1",             # CONNECTION_RIGHT_SERVER_IP
      0,                         # CONNECTION_UP_SERVER_PORT
      ip"127.0.0.1",             # CONNECTION_UP_SERVER_IP
      0,                         # CONNECTION_DOWN_SERVER_PORT
      ip"127.0.0.1"              # CONNECTION_DOWN_SERVER_IP