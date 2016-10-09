  #
  # Here is clonning algorithm. It was created as a replacement of embedded
  # deepcopy() function
  #
  include("..\\src\\ImportFolders.jl")
  import Manager
  import Creature.Block
  import Creature.Func
  using Gallium
  #
  # Type, which describes a function in original Expr tree. It contains
  #
  type MetaFunc
    expr::Expr
    blocks::Dict{UInt64, Expr}
  end
  type MetaOrganism
    lastFn::UInt64
    funcs::Dict{UInt64, MetaFunc}
  end

  #
  # Makes a clone of "e" expression and updates meta information
  # in "funcs" Array
  #
  function clone(e::Expr, funcs::Array{Func, 1})
    local f::Func
    local b::Block
    local mf::MetaFunc
    local h::UInt64 = hash(c.code)
    local mOrg::MetaOrganism = MetaOrganism(
      h,
      Dict{UInt64, MetaFunc}(h => MetaFunc(e, Dict{UInt64, Expr}(h => e))) # these values will be updated
    )
    local ex::Expr = _copy(e, mOrg)
    #
    # This is how we update meta information
    #
    for f in funcs
      mf     = mOrg.funcs[hash(f.code)]
      f.code = mf.expr
      for b in f.blocks
        b.expr = mf.blocks[hash(b.expr)]
      end
    end
    #
    # References main function and it's block should be set separately
    # because our recursive code doesn't work well with main (first) function
    #
    funcs[1].code = ex                    # Main function
    funcs[1].blocks[1].expr = ex.args[2]  # Main function block

    ex
  end
  function _copy(e::Expr, mOrg::MetaOrganism)
    local n::Expr = Expr(e.head);
    n.args = _copyExprArgs(e.args, mOrg);
    n.typ = e.typ;
    n
  end
  function _copyExprArgs(arr::Array{Any,1}, mOrg::MetaOrganism)
    local a::Any
    Any[_copyExprs(a, mOrg) for a in arr]
  end
  function _copyExprs(a::ANY, mOrg::MetaOrganism) a end
  #
  # Don't change the order of these two if blocks
  #
  function _copyExprs(e::Expr, mOrg::MetaOrganism)
    local fn::MetaFunc
    local blocks::Dict{UInt64, Expr}
    local blockId::UInt64

    if e.head === :function
      push!(mOrg.funcs, (mOrg.lastFn = hash(e)) => (fn = MetaFunc(e, Dict{UInt64, Expr}())))
    elseif e.head === :block
      blocks  = mOrg.funcs[mOrg.lastFn].blocks
      blockId = hash(e)
      push!(blocks, blockId => e)
    end
    local ex::Expr = _copy(e, mOrg)
    if e.head === :function fn.expr = ex
    elseif e.head === :block blocks[blockId] = ex end
    ex
  end
  #
  # entry point
  #
  cfg = Config.create()
  c   = Creature.create(cfg)
  #m = MetaOrganism(hash(c.code), Dict{UInt64, MetaFunc}(hash(c.code) => MetaFunc(c.code, Dict{UInt64, Expr}(hash(c.code.args[2]) => c.code))))
  for i = 1:1000 Mutator.mutate(cfg, c) end
