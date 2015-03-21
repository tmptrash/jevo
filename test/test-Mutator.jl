using FactCheck
using Mutator

facts("Mutator module") do
  code   = :(function t();end)
  blocks = [[
    "vars"  => Symbol[],
    "block" => code.args[2],
    "parent"=> [
      "vars"  => [],          
      "block" => nothing,
      "parent"=> nothing
    ]
  ]]
  script = Script.Code(0,0,10,code,blocks)
  Mutator._addVar(script)

  @fact length(code.args[2].args)    => 1
  @fact code.args[2].args[1].args[1] => :(var1)
end