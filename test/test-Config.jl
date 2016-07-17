module TestConfig
  using Config
  using FactCheck

  facts("Read default value") do
    @fact Config.val(Config.create(), :WORLD_IPS) --> 0
  end
  facts("Read default value with incorrect key") do
    @fact Config.val(Config.create(), :UNKNOWN_KEY) --> nothing
  end

  facts("Write value") do
    local cfg::Config.ConfigData = Config.create()

    Config.val(cfg, :WORLD_IPS, 1)
    @fact Config.val(cfg, :WORLD_IPS) --> 1
    Config.val(cfg, :WORLD_IPS, 2)
    @fact Config.val(cfg, :WORLD_IPS) --> 2
  end
  facts("Write value in incorrect key") do
    local cfg::Config.ConfigData = Config.create()

    @fact Config.val(cfg, :UNKNOWN_KEY, 1) --> nothing
    @fact Config.val(cfg, :UNKNOWN_KEY) --> nothing
  end

  facts("Save configuration into the file") do
    cfgFile = "config.data"
    try rm(cfgFile) end
    @fact Config.save(cfgFile) --> true
    @fact isfile(cfgFile)      --> true
    rm(cfgFile)
  end
  facts("Save/load configuration into/from file with correct data") do
    local cfg::Config.ConfigData = Config.create()
    local cfgFile::ASCIIString = "config.data"

    try rm(cfgFile) end
    Config.val(cfg, :WORLD_IPS, 666)
    @fact Config.save(cfgFile)   --> true
    Config.val(cfg, :WORLD_IPS, 777)
    Config.load(cfgFile)
    @fact Config.val(cfg, :WORLD_IPS) --> 666
    rm(cfgFile)
  end
  facts("Load configuration from incorrect file") do
    local cfgFile::ASCIIString = "config.data"
    try rm(cfgFile) end
    io = open(cfgFile, "w")
    write(io, "Hello!")
    close(io)
    @fact Config.load(cfgFile) --> false
    rm(cfgFile)
  end
  facts("Load configuration from file, which doesn't exist") do
    local cfgFile::ASCIIString = "config.data"
    try rm(cfgFile) end
    @fact Config.load(cfgFile) --> false
  end

  facts("Combined test of all functions") do
    local cfg::Config.ConfigData = Config.create()
    local cfgFile1::ASCIIString = "config1.data"
    local cfgFile2::ASCIISTring = "config2.data"

    try rm(cfgFile1) end
    try rm(cfgFile2) end
    @fact Config.val(cfg, :WORLD_IPS, 666) --> 666
    @fact Config.save(cfgFile1)       --> true      # IPS === 666
    @fact Config.val(cfg, :WORLD_IPS)      --> 666
    @fact Config.val(cfg, :WORLD_IPS, 777) --> 777
    @fact Config.val(cfg, :WORLD_IPS)      --> 777
    @fact Config.load(cfgFile1)       --> true
    @fact Config.val(cfg, :WORLD_IPS)      --> 666
    @fact Config.val(cfg, :WORLD_IPS, 777) --> 777
    @fact Config.val(cfg, :WORLD_IPS)      --> 777

    @fact Config.save(cfgFile2)       --> true      # IPS === 777
    @fact Config.val(cfg, :WORLD_IPS, 666) --> 666
    @fact Config.val(cfg, :WORLD_IPS)      --> 666
    @fact Config.load(cfgFile2)       --> true
    @fact Config.val(cfg, :WORLD_IPS)      --> 777

    @fact Config.load(cfgFile1)       --> true      # IPS === 666
    @fact Config.val(cfg, :WORLD_IPS)      --> 666
    @fact Config.load(cfgFile2)       --> true      # IPS === 777
    @fact Config.val(cfg, :WORLD_IPS)      --> 777

    rm(cfgFile1)
    rm(cfgFile2)
  end
 end
