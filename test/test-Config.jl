#
# TODO: add isEmpty test
#
module TestConfig
  using Config
  using FactCheck

  facts("Read default value") do
    @fact Config.create().worldIpsPeriod --> 1.0
  end

  facts("Save configuration into the file") do
    local cfgFile = "config.data"
    local conf    = Config.create()

    try rm(cfgFile) end
    @fact Config.save(conf, cfgFile) --> true
    @fact isfile(cfgFile)      --> true
    rm(cfgFile)
  end
  facts("Save/load configuration into/from file with correct data") do
    local cfg::Config.ConfigData = Config.create()
    local cfgFile::String = "config.data"

    try rm(cfgFile) end
    cfg.worldWidth = 666
    @fact Config.save(cfg, cfgFile)   --> true
    cfg.worldWidth = 777
    cfg = Config.load(cfgFile)
    @fact cfg.worldWidth --> 666
    rm(cfgFile)
  end
  facts("Load configuration from incorrect file") do
    local cfgFile::String = "config.data"
    local conf = Config.create()

    try rm(cfgFile) end
    io = open(cfgFile, "w")
    write(io, "Hello!")
    close(io)
    println("val: ", typeof(Config.load(cfgFile)))
    @fact Config.isEmpty(Config.load(cfgFile)) --> true
    rm(cfgFile)
  end
  facts("Load configuration from file, which doesn't exist") do
    local cfgFile::String = "config.data"
    try rm(cfgFile) end
    @fact Config.isEmpty(Config.load(cfgFile)) --> true
  end

  facts("Combined test of all functions") do
    local cfg::Config.ConfigData = Config.create()
    local cfgFile1::String = "config1.data"
    local cfgFile2::String = "config2.data"

    try rm(cfgFile1) end
    try rm(cfgFile2) end
    cfg.worldWidth = 666
    @fact Config.save(cfg, cfgFile1)       --> true # IPS === 666
    @fact cfg.worldWidth --> 666
    cfg.worldWidth = 777
    @fact cfg.worldWidth                    --> 777
    cfg = Config.load(cfgFile1)
    @fact Config.isEmpty(cfg)              --> false
    @fact cfg.worldWidth                    --> 666
    cfg.worldWidth = 777
    @fact cfg.worldWidth                    --> 777

    @fact Config.save(cfg, cfgFile2)       --> true      # IPS === 777
    cfg.worldWidth = 666
    @fact cfg.worldWidth                    --> 666
    cfg = Config.load(cfgFile2)
    @fact Config.isEmpty(cfg)              --> false
    @fact cfg.worldWidth                    --> 777

    cfg = Config.load(cfgFile1)
    @fact Config.isEmpty(cfg)              --> false     # IPS === 666
    @fact cfg.worldWidth                    --> 666
    cfg = Config.load(cfgFile2)
    @fact Config.isEmpty(cfg)              --> false     # IPS === 777
    @fact cfg.worldWidth                    --> 777

    rm(cfgFile1)
    rm(cfgFile2)
  end
 end
