#
# TODO: Describe this module
#
module Event
  export Observer
  export on
  export off
  export fire

  using Debug

  #
  # Contains events and they handlers
  #
  type Observer
    #
    # {Dict{ASCIIString, Array{Function}}} array of events and they handlers.
    # For example: {"event"=>[fn1, fn2,...],...}
    # 
    events::Dict{ASCIIString, Array{Function}}
  end

  #
  # Adds a handler for specified event
  # @param {Observer}    obs   Events container
  # @param {ASCIIString} event Event name. All in lowercase
  # @param {Function}    fn    Event handler
  #
  function on(obs::Observer, event::ASCIIString, fn::Function)
    if !haskey(obs.events, event) obs.events[event] = Function[] end
    push!(obs.events[event], fn)
  end
  #
  # Removed a handler from handlers list for appropriate event
  # @param {Observer}    obs   Events container
  # @param {ASCIIString} event Event name. All in lowercase
  # @param {Function}    fn    Event handler
  #
  function off(obs::Observer, event::ASCIIString, fn::Function)
    index = findfirst(obs.events[event], fn)
    if index > 0 deleteat!(obs.events[event], index) end
  end
  #
  # Fires an event with parameters. User may cancel current action 
  # by returning false in one of event handlers.
  # @param {Observer} obs Events container
  # @param  {ASCIIString} event Event name
  # @param  {Any} args Other arguments
  # @return {Bool} true means that object, which fired an event
  # may continue it's work. false - otherwise.
  #
  function fire(obs::Observer, event::ASCIIString, args...)
    if !haskey(obs.events, event) return nothing end
    fns = obs.events[event]
    for i in fns
      apply(i, args)
    end
  end
end