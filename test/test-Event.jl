module TestEvent
  using Event
  using FactCheck

  const EVENT = 0

  facts("Observer creation should work") do
    @fact length(Event.create().events) --> 0
  end

  facts("Simple event binding should work") do
    flag = false
    obs  = Event.create()
    function handler() flag = true end

    Event.on(obs, EVENT, handler)
    Event.fire(obs, EVENT)

    @fact flag --> true
  end

  facts("Multiple event binding should work") do
    flag1 = false
    flag2 = false
    obs   = Event.create()
    function handler1() flag1 = true end
    function handler2() flag2 = true end

    Event.on(obs, EVENT, handler1)
    Event.on(obs, EVENT, handler2)
    Event.fire(obs, EVENT)

    @fact flag1 --> true
    @fact flag2 --> true
  end

  facts("Unbinding events should work") do
    flag1 = false
    flag2 = false
    obs   = Event.create()
    function handler1() flag1 = true end
    function handler2() flag2 = true end

    Event.on(obs, EVENT, handler1)
    Event.on(obs, EVENT, handler2)
    Event.off(obs, EVENT, handler1)
    Event.off(obs, EVENT, handler2)
    Event.fire(obs, EVENT)

    @fact flag1 --> false
    @fact flag2 --> false
  end

  facts("clear() should clear all handlers") do
    flag1 = false
    flag2 = false
    obs   = Event.create()
    function handler1() flag1 = true end
    function handler2() flag2 = true end

    Event.on(obs, EVENT, handler1)
    Event.on(obs, EVENT, handler2)
    Event.clear(obs)
    Event.fire(obs, EVENT)

    @fact flag1 --> false
    @fact flag2 --> false
  end
end
