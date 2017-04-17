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
export sqrt
export log
export sin
export cos
export tan
export cot
export sec
export csc
export pi
#
# Binding of available types and available "plus" operators
# for these types. We don't need to export this constant.
#
const PLUS_OPERATORS = Dict{DataType, Symbol}(
  Float64 => :(+)
)
#
# @cmd
# @line
# + operator implementation. Sums two variables. Supports all
# types: Float64. Format: var_xx = var_xx + var_xx
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

  return :($(v1) = $(PLUS_OPERATORS[typ])($(v2), $(v3)))
end
#
# @cmd
# @line
# - operator implementation. Minus two variables. Supports all
# types: Floa64. Format: var_xx = var_xx - var_xx
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

  :($(v1) = $(v2) - $(v3))
end
#
# @cmd
# @line
# * operator implementation. Multiply two variables. Supports all
# types: Float64. Format: var_xx = var_xx * var_xx
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

  :($(v1) = $(v2) * $(v3))
end
#
# @cmd
# @line
# / operator implementation. Divides two variables. Supports all
# types: Float64. Adds special check for 0. In case of zero it
# divides to 1.0. Format: var_xx = var_xx / var_xx
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

  :($(v1) = div($(v2), $(v3) === 0.0 ? 1.0 : $(v3)))
end
#
# @cmd
# @line
# ! operator implementation. Returns Float64 result. Supports all
# types: Float64. For Float64 inverts the sign. Format:
# var_xx::Float64 = var_xx|val * -1.0
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function not(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol    = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any       = @randVarOrValue(org, pos, typ)
  #
  # For Float64 type
  #
  :($(v1) = $(v1) * -1.0)
end
#
# @cmd
# @line
# Bitwise & operator implementation. Supports only numeric types.
# Format: var_xx = Float64(Int(round(var_xx|val)) & Int(round(var_xx|val)))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function and(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($(v1) = Float64(Int(round($(v2))) & Int(round($(v3)))))
end
#
# @cmd
# @line
# Bitwise | operator implementation. Supports only numeric types.
# Format: var_xx = Float64(Int(round(var_xx|val)) | Int(round(var_xx|val)))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function or(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($(v1) = Float64(Int(round($(v2))) | Int(round($(v3)))))
end
#
# @cmd
# @line
# Bitwise & operator implementation. Supports only numeric types.
# Format: var_xx = Float64(Int(round(var_xx|val)) $ Int(round(var_xx|val)))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function xor(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($(v1) = Float64(Int(round($(v2))) $ Int(round($(v3)))))
end
#
# @cmd
# @line
# Arithmetic shift right. Supports only numeric types.
# Format: var_xx = Float64(Int(round(var_xx|val)) >> Int(round(var_xx|val)))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function rshift(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($(v1) = Float64(Int(round($(v2))) >> Int(round($(v3)))))
end
#
# @cmd
# @line
# Arithmetic shift left. Supports only numeric types.
# Format: var_xx = Float64(Int(round(var_xx|val)) << Int(round(var_xx|val)))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function lshift(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  if v1 === :nothing return Expr(:nothing) end
  local v2::Any       = @randVarOrValue(org, pos, typ)
  local v3::Any       = @randVarOrValue(org, pos, typ)

  :($(v1) = Float64(Int(round($(v2))) << Int(round($(v3)))))
end
#
# @cmd
# @line
# Calculates reminder of division of two numbers. Format:
# var_xx = Float64(Int(round(var_xx|val)) % Int(round(var_xx|val)))
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

  :($(v1) = Float64(Int(round($(v2))) % (Int(round($(v3))) === 0 ? 1 : Int(round($(v3))))))
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
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Symbol = @randVar(org, pos, typ)
  if v2 === :nothing return Expr(:nothing) end

  :($(v1) = sqrt(abs($(v2))))
end
# @cmd
# @line
# Calculates natural logarithm of number. Format: var_xx = log(var_xx)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function log(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Symbol = @randVar(org, pos, typ)
  if v2 === :nothing return Expr(:nothing) end

  :($(v1) = log($(v2) > 0.0 ? $(v2) : abs($(v1) !== 0.0 ? $(v1) : 1.0)))
end
# @cmd
# @line
# Calculates sinus of number. Format: var_xx = sin(var_xx|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function sin(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($(v1) = sin($(v2)))
end
# @cmd
# @line
# Calculates cosinus of number. Format: var_xx = cos(var_xx|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function cos(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($(v1) = cos($(v2)))
end
# @cmd
# @line
# Calculates tangens of number. Format: var_xx = tan(var_xx|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function tan(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($(v1) = tan($(v2)))
end
# @cmd
# @line
# Calculates cotangens of number. Format: var_xx = cot(var_xx|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function cot(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($(v1) = cot($(v2) === 0.0 ? 1.0 : $(v2)))
end
# @cmd
# @line
# Calculates secans of number. Format: var_xx = sec(var_xx|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function sec(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($(v1) = sec($(v2)))
end
# @cmd
# @line
# Calculates cosecans of number. Format: var_xx = csc(var_xx|val)
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function csc(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  local v1::Symbol = @randVar(org, pos, Float64)
  if v1 === :nothing return Expr(:nothing) end
  local typ::DataType = @randType()
  local v2::Any = @randVarOrValue(org, pos, typ)

  :($v1 = csc($(v2) === 0.0 ? 1.0 : $(v2)))
end
# @cmd
# @line
# Sets Pi to variable. Format: var_xx = 3.1415926535...
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
