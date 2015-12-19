module TestCommandLine
  using CommandLine
  using FactCheck

  facts("create() method should work correctly") do
    empty!(ARGS)
    push!(ARGS, "flag", "name1=val1", "name2:val2", "name3/val3", "name4-val4")
    args = CommandLine.create()

    @fact length(args)                        --> 5
  end

  facts("has() method should work correctly") do
    empty!(ARGS)
    push!(ARGS, "flag", "name1=val1", "name2:val2", "name3/val3", "name4-val4")
    args = CommandLine.create()

    @fact CommandLine.has(args, "flag")       --> true
    @fact CommandLine.has(args, "ffog")       --> false
    @fact CommandLine.has(args, "name1")      --> true
    @fact CommandLine.has(args, "name2")      --> true
    @fact CommandLine.has(args, "name3")      --> true
    @fact CommandLine.has(args, "name4")      --> false
    @fact CommandLine.has(args, "name4-val4") --> true
    @fact CommandLine.has(args, "")           --> false
  end

  facts("val() method should work correctly") do
    empty!(ARGS)
    push!(ARGS, "flag", "name1=val1", "name2:val2", "name3/val3", "name4-val4")
    args = CommandLine.create()

    @fact CommandLine.val(args, "flag")       --> ""
    @fact CommandLine.val(args, "name1")      --> "val1"
    @fact CommandLine.val(args, "name2")      --> "val2"
    @fact CommandLine.val(args, "name3")      --> "val3"
    @fact CommandLine.val(args, "name4")      --> ""
    @fact CommandLine.val(args, "name4-val4") --> ""
    @fact CommandLine.val(args, "")           --> ""
  end
end