module TestConfig
  using Config
  using FactCheck

  facts("Read default value") do
    @fact Config.create().WORLD_IPS --> 0
  end
  facts("Read default value with incorrect key") do
    @fact Config.create().UNKNOWN_KEY --> nothing
  end

  facts("Write value") do
    local cfg::Config.ConfigData = Config.create()

    cfg.WORLD_IPS = 1
    @fact cfg.WORLD_IPS --> 1
    cfg.WORLD_IPS = 2
    @fact cfg.WORLD_IPS --> 2
  end
  facts("Write value in incorrect key") do
    local cfg::Config.ConfigData = Config.create()

    #@fact Config.val(cfg, :UNKNOWN_KEY, 1) --> nothing
    #@fact Config.val(cfg, :UNKNOWN_KEY) --> nothing
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
    cfg.WORLD_IPS = 666
    @fact Config.save(cfgFile)   --> true
    cfg.WORLD_IPS = 777
    Config.load(cfgFile)
    @fact cfg.WORLD_IPS --> 666
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
    cfg.WORLD_IPS = 666
    @fact Config.save(cfgFile1)            --> true # IPS === 666
    @fact cfg.WORLD_IPS --> 666
    cfg.WORLD_IPS = 777
    @fact cfg.WORLD_IPS                    --> 777
    @fact Config.load(cfgFile1)            --> true
    @fact cfg.WORLD_IPS                    --> 666
    cfg.WORLD_IPS = 777
    @fact cfg.WORLD_IPS                    --> 777

    @fact Config.save(cfgFile2)            --> true      # IPS === 777
    cfg.WORLD_IPS = 666
    @fact cfg.WORLD_IPS                    --> 666
    @fact Config.load(cfgFile2)            --> true
    @fact cfg.WORLD_IPS                    --> 777

    @fact Config.load(cfgFile1)            --> true      # IPS === 666
    @fact cfg.WORLD_IPS                    --> 666
    @fact Config.load(cfgFile2)            --> true      # IPS === 777
    @fact cfg.WORLD_IPS                    --> 777

    rm(cfgFile1)
    rm(cfgFile2)
  end
 end
