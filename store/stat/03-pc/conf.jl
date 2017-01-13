      [110,300,95,0,1,1,1],      # orgMutationProbs (add,change,del,small-change,clone,period,amount)
      1,                         # orgCloneMutation
      100,                       # ORGANISM_MAX_MUTATIONS_ON_CLONE
      300,                       # orgRainMutationPeriod
      10000,                     # ORGANISM_MAX_MUTATION_PERIOD
      4,                         # ORGANISM_MUTATION_AMOUNT
      100,                       # ORGANISM_MAX_MUTATION_AMOUNT
      250,                       # orgStartAmount
      7000,                      # orgStartEnergy
      typemax(UInt32),           # ORGANISM_MAX_ENERGY. Should be less then typemax(UInt32)
      200,                       # orgEnergySpendPeriod
      1,                         # orgEnergySpendAmount
      500,                       # orgRemoveWeakPeriod
      5,                         # orgRemoveWeakAmount
      5,                         # orgClonePeriod
      1,                         # orgStartColor
      2,                         # codeFuncParamAmount
      1920,                      # worldWidth
      960,                       # worldHeight
      0,                         # WORLD_FRAME_DELAY
      0,                         # worldIps
      400,                       # worldMaxOrgs
      50,                        # worldMinOrgs
      10000,                     # worldStartEnergyDots
      UInt32(0x0001F4),          # worldStartEnergyInDot
      0.3,                       # worldEnergyCheckPercent
      500,                       # worldEnergyCheckPeriod
      1,                         # worldZoom
      1,                         # backupPeriod
      7,                         # backupAmount
      1910,                      # STAT_WIDTH
      1020,                      # STAT_HEIGHT
      5,                         # STAT_FRAME_DELAY
      20,                        # conStepEnergySpendPercent
      2000,                      # conServerPort (current server port)
      2001,                      # conFastServerPort (current server "fast" mode port)
      ip"127.0.0.1",             # conServerIp
      0,                         # conLeftServerPort
      ip"127.0.0.1",             # conLeftServerIp
      0,                         # conRightServerPort
      ip"127.0.0.1",             # conRightServerIp
      0,                         # conUpServerPort
      ip"127.0.0.1",             # conUpServerIp
      0,                         # conDownServerPort
      ip"127.0.0.1"              # conDownServerIp