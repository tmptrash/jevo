  include("src\\ImportFolders.jl")
  import Manager

  type MetaFunc
    line::Int
    blocks::Dict{UInt64, Int}
  end
  type MetaOrganism
    lastFn::UInt64
    funcs::Dict{UInt64, MetaFunc}
  end

  function _copy(e::Expr, mOrg::MetaOrganism)
    local n::Expr = Expr(e.head);
    n.args = _copyExprArgs(e.args, mOrg);
    n.typ = e.typ;
    n
  end
  function _copyExprArgs(arr::Array{Any,1}, mOrg::MetaOrganism)
    local a::Any
    local i::Int = 0
    Any[(i += 1;_copyExprs(a, i, mOrg)) for a in arr]
  end
  function _copyExprs(a::ANY, i::Int, mOrg::MetaOrganism) a end
  function _copyExprs(e::Expr, i::Int, mOrg::MetaOrganism)
    if e.head === :function
      push!(mOrg.funcs, (mOrg.lastFn = hash(e)) => MetaFunc(i, Dict{UInt64, Int}()))
    elseif e.head === :block
      push!(mOrg.funcs[mOrg.lastFn].blocks, hash(e) => i)
    end
    _copy(e, mOrg)
  end
  #
  # entry point
  #
  cfg = Config.create()
  c   = Creature.create(cfg)
  #m = MetaOrganism(hash(c.code), Dict{UInt64, MetaFunc}(hash(c.code) => MetaFunc(1, Dict{UInt64, Int}(hash(c.code.args[2]) => 1))))
  for i = 1:1000 Mutator.mutate(cfg, c) end
