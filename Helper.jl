module Helper
  export randTrue

  import Exceptions

  #
  # Record for variable or number. Is used in findVars() function.
  #
  type VarOrNum
    #
    # Expression where variable or number was found
    #
    expr::Expr
    #
    # Index of variable or number within expression
    #
    index::Uint
    #
    # true - var, false - num
    #
    var::Bool
  end

  #
  # Chooses (returns) true or false randomly. Is used to choose between two
  # variants of something. For example + or - sign.
  # @return {Bool}
  #
  function randTrue()
    rand(1:2) === 1
  end
  #
  # It calculates probability index from variable amount of components.
  # Let's imagine we have three actions: one, two and three. We want 
  # these actions to be called randomly, but with different probabilities.
  # For example it may be [3,2]. It means that one should be called
  # in half cases, two in 1/3 cases and three in 1/6 cases. Probabilities
  # should be greated then -1.
  # @param {Array{Int}} prob Probabilities array. e.g.: [3,2] or [1,3]
  # @return {Int}
  #
  function getProbIndex(prob::Array{Int})
    if length(prob) < 1 throw(UserException("Invalid parameter prob: $prob. Array with at least one element expected.")) end

    num = rand(1:sum(prob))
    s   = 0
    i   = 1

    for i = 1:length(prob)
      if num <= (s += prob[i]) break end
    end

    i
  end
  #
  # Parses expression recursively and collects all variables and numbers
  # into "vars" map. Every variable or number is a record in vars argument.
  # Example:
  #
  #     VarOrNum(expr, 1, true)
  #
  # This line means that expr.args[1] contains variable in expr.args[1].
  # @param vars Container for variables: [VarOrNum(expr, 1, true),...]
  # @param parent Expression where we should search for variables/numbers
  # @param index Index of operand in expr, where we should start search
  #
  function findVars(vars::Array{VarOrNum}, parent::Expr, index::Uint)
    expr = parent.args[index]
    #
    # "var"=>true means that current operand is a variable or a number const
    #
    if typeof(expr) !== Expr
      push!(vars, VarOrNum(parent, index, true))
      return nothing
    end
    for i = 1:length(expr.args)
      if typeof(expr.args[i]) === Expr
        _findVars(vars, expr, i)
      elseif typeof(expr.args[i]) === Symbol
        push!(vars, VarOrNum(expr, i, i!==1))
      else
        push!(vars, VarOrNum(expr, i, true))
      end
    end
  end
end