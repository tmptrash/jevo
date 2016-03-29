#
# This file is a part of Code module. Contains Math functions.
#
# @author DeadbraiN
#
export plus
export minus
export multiply
export divide
export reminder
#
# @cmd
# @line
# + operator implementation. Sums two variables. Supports all
# types: ASCIIString, Int8, Bool,... In case of string uses
# concatination, for boolean - & operator. If code is empty
# this function will skip the execution.
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function plus(org::Creature.Organism, pos::Code.Pos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)

  if v1 === :nothing return Expr(:nothing) end

  if typ === ASCIIString 
    return :($v1 = $(v2) * $v3)
  elseif typ === Bool
    return :($v1 = $v2 & $v3)
  end

  :($v1 = $v2 + $v3)
end
#
# @cmd
# @line
# - operator implementation. Minus two variables. Supports all
# types: ASCIIString, Int8, Bool,... In case of string uses
# concatination, for boolean - & operator. If code is empty
# this function will skip the execution.
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function minus(org::Creature.Organism, pos::Code.Pos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)
  local l::Int

  if v1 === :nothing return Expr(:nothing) end
  #
  # "1234"   - "85"  = "12" (just cut v1 by length of v2)
  # "qwerty" - "111" = "qwe"
  #
  if typ === ASCIIString
    return :($(v1) = $(v2)[1:(length($v3) > length($v2) > 0 ? 0 : length($v2) - length($v3))])
  #
  # true  - true  = false, true  - false = true, 
  # false - false = false, false - true  = true
  #
  elseif typ === Bool
    return :($v1 = Bool(abs($v2 - $v3)))
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
# types: ASCIIString, Int8, Bool,... In case of string uses
# concatination, for boolean - & operator. If code is empty
# this function will skip the execution.
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function multiply(org::Creature.Organism, pos::Code.Pos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)

  if v1 === :nothing return Expr(:nothing) end

  :($v1 = $v2 * $v3)
end
#
# @cmd
# @line
# / operator implementation. Divides two variables. Supports all
# types: ASCIIString, Int8, Bool,... In case of string uses
# concatination, for boolean - | operator. If code is empty
# this function will skip the execution.
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function divide(org::Creature.Organism, pos::Code.Pos)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)

  if v1 === :nothing return Expr(:nothing) end
  #
  # "1234"   / "854" = "1"   (just cut v1 by length of v1 / v2)
  # "qwerty" / "111" = "qw"
  #
  if typ === ASCIIString
    return :($v1 = $v2[1:(length($v3) > length($v2) > 0 ? 0 : div(length($v2), length($v3)))])
  elseif typ === Bool
    return :($(v1) = $(v2) | $(v3))
  end

  :($(v1) = $(v2) / $(v3))
end
#
# @cmd
# @line
# Calculates reminder of division of two numbers. For ASCIIString
# calculates reminder of cutting: "12345" % "23" = "345". It uses
# length of second string for cut. For Bool uses | operator.
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function reminder(org::Creature.Organism, fn::ASCIIString, block::Expr)
  local typ::DataType = @randType()
  local v1::Symbol    = @randVar(org, pos, typ)
  local v2::Symbol    = @randVar(org, pos, typ)
  local v3::Symbol    = @randVar(org, pos, typ)

  if v1 === :nothing return Expr(:nothing) end
  #
  # "1234"   / "854" = "1"   (just cut v1 by length of v1 / v2)
  # "qwerty" / "111" = "qw"
  #
  if typ === ASCIIString
    return :($v1 = $v2[(length($v3) > length($v2) ? 1 : length($v3)):(length($v3) > length($v2) > 0 ? 0 : end)])
  elseif typ === Bool
    return :($v1 = $v2 | $v3)
  end

  :($v1 = $v2 / $v3)
end