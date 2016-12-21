#
# This file is a part of Code module. Contains Math functions.
#
# @author DeadbraiN
#
import Config

export plus
export minus
export multiply
export divide
export not
export and
export or
export xor
export rshift
export lshift
export reminder
#
# Binding of available types and available "plus" operators
# for these types. We don't need to export this constant.
#
const PLUS_OPERATORS = Dict{DataType, Symbol}(
  String  => :(*),
  Bool    => :(&),
  Int8    => :(+),
  Int16   => :(+),
  Int     => :(+),
  Float64 => :(+)
)
#
# @cmd
# @line
# + operator implementation. Sums two variables. Supports all
# types: String, Int8, Bool,... In case of string uses
# concatination, for boolean - & operator. If code is empty
# this function will skip the execution. We don't check the
# position, because of performance issues.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function plus(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)

  return :($v1 = $(PLUS_OPERATORS[typ])($v2, $v3))
end
#
# @cmd
# @line
# - operator implementation. Minus two variables. Supports all
# types: String, Int8, Bool,... In case of string uses
# concatination, for boolean - & operator. If code is empty
# this function will skip the execution.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function minus(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)
  local l::Int
  #
  # "1234"   - "85"  = "12" (just cut v1 by length of v2)
  # "qwerty" - "111" = "qwe"
  # "123" - "12345"  = ""  # "123"[1:0] === ""
  #
  if typ === String return :($v1 = $(v2)[1:(length($v3) > length($v2) ? 0 : length($v2) - length($v3))])
  #
  # true  - true  = false, true  - false = true,
  # false - false = false, false - true  = true
  #
  elseif typ === Bool return :($v1 = Bool(abs($v2 - $v3)))
  end
  #
  # Numeric types are here
  #
  :($v1 = $v2 - $v3)
end
#
# @cmd
# @line
# * operator implementation. Multiply two variables. Supports all
# types: String, Int8, Bool,... In case of string uses
# concatination, for boolean - & operator. If code is empty
# this function will skip the execution.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function multiply(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)

  :($v1 = $v2 * $v3)
end
#
# @cmd
# @line
# / operator implementation. Divides two variables. Supports all
# types: String, Int8, Bool,... In case of string uses
# concatination, for boolean - | operator. If code is empty
# this function will skip the execution.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function divide(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)
  #
  # "1234"   / "854" = "1"   (just cut v1 by length of v1 / v2)
  # "qwerty" / "111" = "qw"
  #
  if typ === String
    # TODO: error: zero divide is here and zero index!
    return :($v1 = $v2[1:(length($v3) > length($v2) > 0 ? 0 : div(length($v2), length($v3)))])
  elseif typ === Bool
    return :($(v1) = $(v2) | $(v3))
  end

  :($(v1) = div($(v2), $(v3)))
end
#
# @cmd
# @line
# ! operator implementation. Returns Bool result. Supports all
# types: String, Int8, Bool,... In case of string: true if "",
# false if !"". For numbers true if >0, false if <0. Representation
# is the following: var::Bool = !(var|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function not(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, Bool)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  #
  # "" -> true, "..." -> false
  #
  if typ === String
    return :($v1 = isempty($(v2)))
  elseif typ === Bool
    return :($(v1) = !($(v2)))
  end
  #
  # Works for Int8, Int16, Int64 types
  #
  :($(v1) = ($(v2) < $typ(1)))
end
#
# @cmd
# @line
# Bitwise & operator implementation. Supports only numeric types
# IntX and Bool. If there is no bool variable in current scope,
# it returns :nothing symbol. Final line format:
# var = (var|val) & (var|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function and(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randBoolAndNumType()
  if typ === Float64 return Expr(:nothing) end
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($v1 = $typ($(v2)) & $typ($(v3)))
end
#
# @cmd
# @line
# Bitwise | operator implementation. Supports only numeric types
# IntX and Bool. If there is no bool variable in current scope,
# it returns :nothing symbol. Final line format:
# var = (var|val) | (var|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function or(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randBoolAndNumType()
  if typ === Float64 return Expr(:nothing) end
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($v1 = $typ($(v2)) | $typ($(v3)))
end
#
# @cmd
# @line
# Bitwise & operator implementation. Supports only numeric types
# IntX and Bool. If there is no bool variable in current scope,
# it returns :nothing symbol. Final line format:
# var = (var|val) & (var|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function xor(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randBoolAndNumType()
  if typ === Float64 return Expr(:nothing) end
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($v1 = $typ($(v2)) $ $typ($(v3)))
end
#
# @cmd
# @line
# Arithmetic shift right. Supports only numeric types IntX.
# If there is no bool variable in current scope, it returns
# :nothing symbol. Final line format:
# var = (var|val) & (var|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function rshift(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  if typ === Float64 return Expr(:nothing) end
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($v1 = $typ($(v2)) >> $typ($(v3)))
end
#
# @cmd
# @line
# Arithmetic shift left. Supports only numeric types IntX.
# If there is no bool variable in current scope, it returns
# :nothing symbol. Final line format:
# var = (var|val) & (var|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function lshift(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  if typ === Float64 return Expr(:nothing) end
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($v1 = $typ($(v2)) << $typ($(v3)))
end
#
# @cmd
# @line
# Calculates reminder of division of two numbers. For String
# calculates reminder of cutting: "12345" % "23" = "345". It uses
# length of second string for cut. For Bool uses | operator.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function reminder(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)
  #
  # "1234"   / "854" = "1"   (just cut v1 by length of v1 / v2)
  # "qwerty" / "111" = "qw"
  #
  if typ === String
    return :($v1 = $v2[(length($v3) > length($v2) ? 1 : length($v3)):(length($v3) > length($v2) > 0 ? 0 : end)])
  elseif typ === Bool
    return :($v1 = $v2 | $v3)
  end

  :($v1 = $v2 % $v3)
end
#
# @cmd
# @line
# Converts any types to string. Format: var = string((var|val))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toString(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, String)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)

  :($v1 = string($(v2)))
end
#
# @cmd
# @line
# Converts any types to Bool. Format: var = Bool((var|val))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toBool(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, Bool)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)

  if typ === String
    return :($v1 = isempty($(v2)))
  elseif typ === Bool
    return :($v1 = $(v2))
  end

  :($v1 = ($v2 > $typ(0)))
end
#
# @cmd
# @line
# Converts any types to Int. Format: var = Bool((var|val))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toInt(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, Int)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)

  if typ === String return :($v1 = (isempty($(v2)) ? 0 : 1)) end
  if typ === Float64 return :($v1 = Int(round($(v2)))) end

  :($v1 = Int($(v2)))
end
#
# @cmd
# @line
# Converts any types to Int8. Format: var = Int8((var|val)). If
# converted variable contains number more then typemax(type), then
# typemax(type) will be used.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toInt8(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, Int8)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)

  if typ === String return :($v1 = isempty($(v2)) ? 0 : 1) end
  if typ === Bool return :($v1 = $(v2) ? 1 : 0) end
  if typ === Float64 return :($v1 = ($(typemax(Int8)) >= $(v2) ? Int8(round($(v2))) : $(typemax(Int8)))) end

  :($v1 = ($(typemax(Int8)) >= $(v2) ? Int8($(v2)) : $(typemax(Int8))))
end
#
# @cmd
# @line
# Converts any types to Int16. Format: var = Int16((var|val)). If
# converted variable contains number more then typemax(type), then
# typemax(type) will be used.
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toInt16(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, Int16)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)

  if typ === String return :($v1 = isempty($(v2)) ? 0 : 1) end
  if typ === Bool return :($v1 = $(v2) ? 1 : 0) end
  if typ === Float64 return :($v1 = ($(typemax(Int16)) >= $(v2) ? Int16(round($(v2))) : $(typemax(Int16)))) end

  :($v1 = ($(typemax(Int16)) >= $(v2) ? Int16($(v2)) : $(typemax(Int16))))
end
#
# @cmd
# @line
# Converts any types to Float64. Format: var = Float64((var|val))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function toFloat64(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)

  if typ === String return :($v1 = isempty($(v2)) ? 0.0 : 1.0) end

  :($v1 = Float64($(v2)))
end
#
# @cmd
# @line
# Calculates square root of number. Format: var = sqrt(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function sqrt(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol = @randVar(org, pos, typ)
  if v2 === :nothing return Expr(:nothing) end

  :($v1 = sqrt(abs($(v2))))
end
# @cmd
# @line
# Calculates natural logarithm of number. Format: var = log(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function log(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Symbol = @randVar(org, pos, typ)
  if v2 === :nothing return Expr(:nothing) end

  :($v1 = log($v2 > 0 ? $v2 : $v1))
end
# @cmd
# @line
# Calculates sinus of number. Format: var = sin(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function sin(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = sin($(v2)))
end
# @cmd
# @line
# Calculates cosinus of number. Format: var = cos(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function cos(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = cos($(v2)))
end
# @cmd
# @line
# Calculates tangens of number. Format: var = tan(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function tan(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = tan($(v2)))
end
# @cmd
# @line
# Calculates cotangens of number. Format: var = cot(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function cot(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = cot($(v2)))
end
# @cmd
# @line
# Calculates secans of number. Format: var = sec(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function sec(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = sec($(v2)))
end
# @cmd
# @line
# Calculates cosecans of number. Format: var = csc(var)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function csc(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randNumType()
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = csc($(v2)))
end
# @cmd
# @line
# Sets Pi to variable. Format: var = 3.1415...
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function pi(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end

  :($v1 = pi)
end
