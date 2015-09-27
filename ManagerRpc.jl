#
# TODO: Description
# This is a part of Manager module.
# TODO: Dependencies
#

#
# @rpc
# Creates tasks and organisms according to Config. All tasks
# will be in _tasks field.
#
function createOrganisms()
  #
  # Inits available organisms in Tasks
  #
  for i = 1:Config.organism["startAmount"]
    createOrganism()
  end
end
#
# @rpc
# Creates one task and organism inside this task. Created
# task will be added to _tasks array. Position may be set
# or random free position will be used.
# @param pos Position|nothing Position of the organism
# @return {OrganismTask}
#
function createOrganism(pos = nothing)
    Manager._createOrganism(pos)
end
#
# @rpc
# Energy decrease period setter. This method may be called
# from remote for changing this perion. It affects on speed
# of organism's energy spending.
# @param period Period we want to set
#
@debug function setPeriod(period::Uint)
@bp
  Manager._options.period = period
end
#
# @rpc
# Mutator's change/add probability array. This is a probability
# for mutator, which affects more changes or additions in 
# organism's source code.
#
function setProbabilities(probs::Array{Int})
  Manager._options.probs = probs
end

#
# Handler for commands obtained from all connected clients. All supported
# commands are in _rpcApi dictionary. If current command is undefinedin _rpcApi
# then, false will be returned.
#
function _onRemoteCommand(cmd::Connection.Command, ans::Connection.Answer)
  ans.data = haskey(_rpcApi, cmd.cmd) ? apply(cmd.cmd, cmd.args) : false
end
#
# An API for remove clients. This manager will be a server for them.
# Only these functions may be called by clients. For calling them,
# you have to use "Client" module.
#
_rpcApi = Dict{Function, Bool}([
  createOrganisms  => true,
  createOrganism   => true,
  setPeriod        => true,
  setProbabilities => true
])