#
# Implements Listener\Observer pattern. First, you have to create observer
# object by calling create(), assign some handlers with on() and after that, 
# you may fire events with parameters.
# 
# Usage:
#     import Event
#     ...
#     function handlerFn(p1, p2)
#         ....
#     end
#     ...
#     obs = Event.create()
#     Event.on(obs, "event", handlerFn)
#     ...
#     Event.fire(obs, "event", param1, param2)
#     ...
#     Event.clear(obs)
#
# @author DeadbraiN
#
# TODO: optimize events from ASCIIString to Int type
module Event
  export Observer
  export create
  export on
  export off
  export fire
  export clear

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
  # Creates new observer instance. It's used in functions like on(), fire(),...
  # @return {Observer}
  #
  function create()
    Observer(Dict{ASCIIString, Array{Function}}())
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
    local index::Int = findfirst(obs.events[event], fn)
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
    local fns::Array{Function} = obs.events[event]
    local i::Function
    
    for i in fns
      i(args...)
    end
  end
  #
  # Removes all event handlers from observer
  # @param {Observer} obs Events container
  #
  function clear(obs::Observer)
    empty!(obs.events)
  end
end