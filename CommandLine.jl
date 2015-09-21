#
# Helper module for working with command line arguments.
# It understands arguments separated by space symbol.
# Argument itself may consist of argument and value. e.g.:
# "file:test.txt" or "arg=value" or "param/val". You may
# use different separator between argument and the value.
# See ARG_VAL_SEPARATORS const for details. 
#
# Usage:
#     $julia test.jl 1 arg:val
#     #
#     # test.jl file...
#     #
#     args = CommandLine.parse()
#     println(args["1"])   # prints ""
#     println(args["arg"]) # prints "val"
#
# @author DeadbraiN
#
module CommandLine
  export parse
  #
  # This separator set is used for splitting arguments
  #
  const ARG_VAL_SEPARATORS = Set(":=/")
  #
  # Parses command line arguments and returns map of arg
  # names like keys and values like values. Example:
  # "file:test.txt" -> {"file" => "test.txt"}.
  # @return {Dict{ASCIIString, ASCIIString}}
  #
  function parse()
    args = Dict{ASCIIString, ASCIIString}()

    for a in ARGS
      arr = split(a, ARG_VAL_SEPARATORS)
      args[arr[1]] = length(arr) > 1 ? arr[2] : ""
    end

    args
  end
  #
  # Returns specified argument's value. If no value or argument
  # doesn't exist, then returns empty string
  # @param 
  #
  function value(args::Dict{ASCIIString, ASCIIString}, arg::ASCIIString)
    haskey(args, arg) ? args[arg] : ""
  end
end