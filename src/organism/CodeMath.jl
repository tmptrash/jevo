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
# @cmd
# @line
# + operator implementation. Sums two variables. Supports all
# types: Float16. Format: var_xx = var_xx + var_xx
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function plus(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  return :($(@randVar()) = $(@randVar()) + $(@randVar()))
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
  :($(@randVar()) = $(@randVar()) - $(@randVar()))
end
#
# @cmd
# @line
# * operator implementation. Multiply two variables. Supports all
# types: Float16. Format: var_xx = var_xx * var_xx
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function multiply(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = $(@randVar()) * $(@randVar()))
end
#
# @cmd
# @line
# / operator implementation. Divides two variables. Supports all
# types: Float16. Adds special check for 0. In case of zero it
# divides to 1.0. Format: var_xx = var_xx / var_xx
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function divide(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = $(@randVar()) / $(@randVar()))
end
#
# @cmd
# @line
# ! operator implementation. Returns Float16 result. Supports all
# types: Float16. For Float16 inverts the sign. Format:
# var_xx::Float16 = var_xx|val * -1.0
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function not(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = $(@randVar()) * Float16(-1.0))
end
#
# @cmd
# @line
# Bitwise & operator implementation. Supports only numeric types.
# Format: var_xx = Float16(Int(var_xx) & Int(var_xx))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function and(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Float16($(@randIntVar()) & $(@randIntVar())))
end
#
# @cmd
# @line
# Bitwise | operator implementation. Supports only numeric types.
# Format: var_xx = Float16(Int(var_xx) | Int(var_xx))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function or(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Float16($(@randIntVar()) | $(@randIntVar())))
end
#
# @cmd
# @line
# Bitwise & operator implementation. Supports only numeric types.
# Format: var_xx = Float16(Int(var_xx) $ Int(var_xx))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function xor(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Float16($(@randIntVar()) $ $(@randIntVar())))
end
#
# @cmd
# @line
# Arithmetic shift right. Supports only numeric types.
# Format: var_xx = Float16(Int(var_xx) >> Int(var_xx))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function rshift(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = $(@randIntVar()) >> $(@randIntVar()))
end
#
# @cmd
# @line
# Arithmetic shift left. Supports only numeric types.
# Format: var_xx = Float16(Int(var_xx) << Int(var_xx))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function lshift(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = $(@randIntVar()) << $(@randIntVar()))
end
#
# @cmd
# @line
# Calculates reminder of division of two numbers. Format:
# var_xx = Float16(Int(var_xx) % Int(var_xx))
# @param cfg Global configuration type
# @param org Organism we have to mutate
# @param pos Position in code
# @return {Expr|Expr(:nothing)}
#
function reminder(cfg::Config.ConfigData, org::Creature.Organism, pos::Helper.CodePos)
  :($(@randVar()) = Float16($(@randIntVar()) % ifz($(@randVar()))))
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
  :($(@randVar()) = sqrt(abs($(@randVar()))))
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
  :($(@randVar()) = log(abs($(@randVar()))))
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
  :($(@randVar()) = sin($(@randVar())))
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
  :($(@randVar()) = cos($(@randVar())))
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
  :($(@randVar()) = tan($(@randVar())))
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
  :($(@randVar()) = cot($(@randVar())))
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
  :($(@randVar()) = sec($(@randVar())))
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
  :($(@randVar()) = csc($(@randVar())))
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
  :($(@randVar()) = Float16(Base.pi))
end
