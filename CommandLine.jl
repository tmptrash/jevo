#
# Helper module for working with command line arguments.
# It understands arguments separated by space(s) symbol.
# Argument itself may consist of name and value. e.g.:
# "file:test.txt" or "arg=value" or "param/val". You may
# use different separators between name and the value.
# See ARG_VAL_SEPARATORS constant for details. 
#
# Usage:
#     $julia test.jl 1 arg:val
#     #
#     # test.jl file...
#     #
#     args = CommandLine.create()
#     println(CommandLine.value(args, "1"))   # prints ""
#     println(CommandLine.value(args, "arg")  # prints "val"
#
# @author DeadbraiN
#
module CommandLine
  export create
  export val
  export has

  #
  # This separator set is used for splitting name and value
  # of one argument
  #
  const ARG_VAL_SEPARATORS = Set(":=/")
  #
  # Parses command line arguments and returns map of arg
  # names like keys and values like values. Example:
  # "file:test.txt" -> {"file" => "test.txt"}.
  # @return {Dict{ASCIIString, ASCIIString}}
  #
  function create()
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
  # @param args Arguments object returned by create()
  # @param arg Name of the argument
  # @return Argument's value or empty string
  #
  function val(args::Dict{ASCIIString, ASCIIString}, arg::ASCIIString)
    haskey(args, arg) ? args[arg] : ""
  end
  #
  # Checks if specified key (arg) is in command line
  # @param args Arguments object returned by create()
  # @param arg Name of the argument
  # @return true\false
  #
  function has(args::Dict{ASCIIString, ASCIIString}, arg::ASCIIString)
    haskey(args, arg)
  end
end