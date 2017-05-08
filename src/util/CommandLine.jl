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
  # doesn't exist, then returns empty string. In case if parse
  # argument is true, then it will try to parse it's value's type
  # @param args Arguments object returned by create()
  # @param arg Name of the argument
  # @param parse true if we have to try parse the value
  # @return {Any} Argument's value or empty string
  #
  function val(args::Dict{String, String}, arg::String, parse::Bool = false)
    if !haskey(args, arg) return "" end
    if parse return _parse(args, arg) end
    args[arg]
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
  #
  # This function returns parsed command line argument value for specified
  # command. Supported types are in comments below...
  # @param args Command line arguments returned by create()
  # @param arg Name of the argument
  # @return {Any}
  #
  function _parse(args::Dict{String, String}, arg::String)
    local value::String = val(args, arg)

    if isempty(value) return true                                               # Bool
    elseif value == "true" return true                                          # Bool
    elseif value == "false" return false                                        # Bool
    elseif !isnull(tryparse(Int, value)) return parse(Int, value)               # Int
    elseif !isnull(tryparse(Float64, value)) return parse(Float64, value)       # Float64
    elseif value[1] === '[' return parse.(split(value[2:end-1], ","))           # Array{Type,1}
    elseif length(split(value, ".")) === 4 IPv4(value)                          # IPv4
    end

    value                                                                       # String
  end
end
