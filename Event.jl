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
  # Type for the callback function
  #
  type Func
    #
    # Function to call
    #
    func::Function
    #
    # Arguments, which will be added at the beginning of the function
    #
    args::Array{Any}
  end
  #
  # Contains events and they handlers
  #
  type Observer
    #
    # {Dict{ASCIIString, Array{Function}}} array of events and they handlers.
    # For example: {"event"=>[fn1, fn2,...],...}
    # 
    events::Dict{ASCIIString, Array{Func}}
  end

  #
  # Adds a handler for specified event
  # @param obs   Events container
  # @param event Event name. All in lowercase
  # @param fn    Event handler
  # @param args  Array of arguments. They will be added at the beginning of function
  #
  function on(obs::Observer, event::ASCIIString, fn::Function, args::Array{Any}=[])
    if !haskey(obs.events, event) obs.events[event] = Func[] end
    push!(obs.events[event], Func(fn, args))
  end
  #
  # Removed a handler from handlers list for appropriate event
  # @param obs   Events container
  # @param event Event name. All in lowercase
  # @param fn    Event handler
  #
  function off(obs::Observer, event::ASCIIString, fn::Function)
    index = findfirst(x -> x.func === fn, obs.events[event])
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
      apply(i.func, vcat(i.args, [x for x in args]))
    end
  end
end