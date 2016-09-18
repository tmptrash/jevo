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
#     println(CommandLine.has(args, "1"))   # prints true
#     println(CommandLine.val(args, "1"))   # prints ""
#     println(CommandLine.val(args, "unk")  # prints false
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
  # @return {Dict{String, String}}
  #
  function create()
    local args::Dict{String, String} = Dict{String, String}()
    local a::String

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
  # @return {String} Argument's value or empty string
  #
  function val(args::Dict{String, String}, arg::String)
    haskey(args, arg) ? args[arg] : ""
  end
  #
  # Checks if specified key (arg) is in command line
  # @param args Arguments object returned by create()
  # @param arg Name of the argument
  # @return {Bool}
  #
  function has(args::Dict{String, String}, arg::String)
    haskey(args, arg)
  end
end
