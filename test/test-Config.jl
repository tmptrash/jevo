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
    Config.save(cfgFile)
    @fact isfile(cfgFile) --> true
    rm(cfgFile)
  end
  facts("Save configuration into the file with correct data") do
    cfgFile = "config.data"
    try rm(cfgFile) end
    Config.val(WORLD, IPS, UInt(666))
    Config.save(cfgFile)
    Config.val(WORLD, IPS, UInt(777))
    Config.load(cfgFile)
    @fact Config.val(WORLD, IPS) --> UInt(666)
    rm(cfgFile)
  end
 end