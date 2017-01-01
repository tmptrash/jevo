#
# This file is a part of Code module
#
# @author DeadbraiN
#
import Config

export toString
export toBool
export toInt
export toInt8
export toInt16
export toFloat64
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
  local v2::Symbol    = @randVar(org, pos, typ)
  #
  # If there is no variable with needed type in current block,
  # then we have to generate random typed value (see val)
  #
  if v2 === :nothing
    local val::Any = @randValue(typ)
    if typ === String  return :($v1 = $(length(val))) end
    if typ === Bool    return :($v1 = $(Int8(val))) end
    if typ === Float64 return :($v1 = $(typemax(Int8) >= Int8(round(val)) ? Int8(round(val)) : typemax(Int8))) end

    return :($v1 = $(typemax(Int8) >= abs(val) ? Int8(abs(val)) : typemax(Int8)))
  end

  if typ === String  return :($v1 = length($(v2))) end
  if typ === Bool    return :($v1 = Int8($(v2))) end
  if typ === Float64 return :($v1 = (ifelse($(typemax(Int8)) >= Int8(round($(v2))), Int8(round($(v2))), $(typemax(Int8))))) end

  :($v1 = ifelse($(typemax(Int8)) >= abs($(v2)), Int8(abs($(v2))), $(typemax(Int8))))
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
  if typ === Float64 return :($v1 = ($(typemax(Int16)) >= Int16(round($(v2))) ? Int16(round($(v2))) : $(typemax(Int16)))) end

  :($v1 = ($(typemax(Int16)) >= abs($(v2)) ? Int16(abs($(v2))) : $(typemax(Int16))))
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
