module TestConfig
  using Config
  using FactCheck

  facts("Read default value") do
    @fact Config.val(SCRIPT, FUNC_PREFIX) --> "func"
  end
  facts("Read default value with incorrect section/key") do
    @fact Config.val(0, 0) === null --> true
  end

  facts("Write value") do
    Config.val(WORLD, IPS, UInt(1))
    @fact Config.val(WORLD, IPS) --> UInt(1)
    Config.val(WORLD, IPS, UInt(2))
    @fact Config.val(WORLD, IPS) --> UInt(2)
  end
  facts("Write value in incorrect section/key") do
    @fact Config.val(0, 0, UInt(1)) --> false
    @fact Config.val(0, 0) === null --> true
  end

  facts("Save configuration into the file") do
    cfgFile = "config.data"
    try rm(cfgFile) end
    @fact Config.save(cfgFile) --> true
    @fact isfile(cfgFile)      --> true
    rm(cfgFile)
  end
  facts("Save/load configuration into/from file with correct data") do
    cfgFile = "config.data"
    try rm(cfgFile) end
    Config.val(WORLD, IPS, UInt(666))
    @fact Config.save(cfgFile)   --> true
    Config.val(WORLD, IPS, UInt(777))
    Config.load(cfgFile)
    @fact Config.val(WORLD, IPS) --> UInt(666)
    rm(cfgFile)
  end
  facts("Load configuration from incorrect file") do
    cfgFile = "config.data"
    try rm(cfgFile) end
    io = open(cfgFile, "w")
    write(io, "Hello!")
    close(io)
    @fact Config.load(cfgFile) --> false
    rm(cfgFile)
  end
  facts("Load configuration from file, which doesn't exist") do
    cfgFile = "config.data"
    try rm(cfgFile) end
    @fact Config.load(cfgFile) --> false
  end

  facts("Combined test of all functions") do
    cfgFile1 = "config1.data"
    cfgFile2 = "config2.data"

    try rm(cfgFile1) end
    try rm(cfgFile2) end
    @fact Config.val(WORLD, IPS, UInt(666)) --> true
    @fact Config.save(cfgFile1)             --> true      # IPS === 666
    @fact Config.val(WORLD, IPS)            --> UInt(666)
    @fact Config.val(WORLD, IPS, UInt(777)) --> true
    @fact Config.val(WORLD, IPS)            --> UInt(777)
    @fact Config.load(cfgFile1)             --> true
    @fact Config.val(WORLD, IPS)            --> UInt(666)
    @fact Config.val(WORLD, IPS, UInt(777)) --> true
    @fact Config.val(WORLD, IPS)            --> UInt(777)

    @fact Config.save(cfgFile2)             --> true      # IPS === 777
    @fact Config.val(WORLD, IPS, UInt(666)) --> true
    @fact Config.val(WORLD, IPS)            --> UInt(666)
    @fact Config.load(cfgFile2)             --> true
    @fact Config.val(WORLD, IPS)            --> UInt(777)
    
    @fact Config.load(cfgFile1)             --> true      # IPS === 666
    @fact Config.val(WORLD, IPS)            --> UInt(666)
    @fact Config.load(cfgFile2)             --> true      # IPS === 777
    @fact Config.val(WORLD, IPS)            --> UInt(777)

    rm(cfgFile1)
    rm(cfgFile2)
  end
 end
