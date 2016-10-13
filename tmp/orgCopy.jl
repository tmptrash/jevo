  #
  # Here is clonning algorithm. It was created as a replacement of embedded
  # deepcopy() function
  # TODO: describe my copy() version
  # TODO: describe meta map structure
  # TODO: describe mem addresses
  # TODO: describe requirement, that meta info and expr tree should be well prepared
  #
  include("..\\src\\ImportFolders.jl")
  import Manager
  import Creature.Block
  import Creature.Func
  #
  # Type, which describes a function in original Expr tree. It contains
  #
  type MetaFunc
    expr::Expr
    blocks::Dict{Int, Expr}
  end
  type MetaCode
    curFn::Int
    funcs::Dict{Int, MetaFunc}
  end
  #
  # Makes a clone of "e" expression and updates meta information
  # in "funcs" Array
  #
  function clone(e::Expr, funcs::Array{Func, 1})
    local f::Func
    local b::Block
    local mf::MetaFunc
    local h::Int = Int(pointer_from_objref(e))
    local mOrg::MetaCode = MetaCode(h,Dict{Int, MetaFunc}(h => MetaFunc(e, Dict{Int, Expr}(Int(pointer_from_objref(e.args[2])) => e))))
    local ex::Expr = _copy(e, mOrg)
    #
    # This is how we update meta information
    #
    for f in funcs
      mf     = mOrg.funcs[Int(pointer_from_objref(f.code))]
      f.code = mf.expr
      for b in f.blocks b.expr = mf.blocks[Int(pointer_from_objref(b.expr))] end
    end
    #
    # References main function and it's block should be set separately
    # because our recursive code doesn't work well with main (first) function
    #
    funcs[1].code = ex                    # Main function
    funcs[1].blocks[1].expr = ex.args[2]  # Main function block

    ex
  end
  function _copy(e::Expr, mOrg::MetaCode)
    local n::Expr = Expr(e.head);
    n.args = _copyExprArgs(e.args, mOrg);
    n.typ = e.typ;
    n
  end
  function _copyExprArgs(arr::Array{Any,1}, mOrg::MetaCode)
    local a::Any
    local arrCopy::Array{Any, 1} = []
    for a in arr push!(arrCopy, _copyExprs(a, mOrg)) end
    arrCopy
  end
  function _copyExprs(a::ANY, mOrg::MetaCode) a end
  #
  # Don't change the order of these two if blocks
  #
  function _copyExprs(e::Expr, mOrg::MetaCode)
    local fn::MetaFunc
    local blocks::Dict{Int, Expr}
    local blockId::Int
    #
    # Don't touch this code. It's optimized for speed
    #
    if e.head === :function
      push!(mOrg.funcs, (mOrg.curFn = Int(pointer_from_objref(e))) => (fn = MetaFunc(e, Dict{Int, Expr}())))
      return fn.expr = _copy(e, mOrg)
    elseif e.head === :block
      blocks  = mOrg.funcs[mOrg.curFn].blocks
      blockId = Int(pointer_from_objref(e))
      push!(blocks, blockId => e)
      return blocks[blockId] = _copy(e, mOrg)
    end

    _copy(e, mOrg)
  end
  #
  # entry point
  #
  cfg = Config.create()
  c   = Creature.create(cfg)
  for i = 1:1000 Mutator.mutate(cfg, c) end
