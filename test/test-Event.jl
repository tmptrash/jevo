module TestEvent
  using Event
  using FactCheck

  facts("Observer creation should work") do
    @fact length(Event.create().events) --> 0
  end

  facts("Binding events should work") do
    flag = false
    obs  = Event.create()
    function handler() flag = true end

    Event.on(obs, "event", handler)
    Event.fire(obs, "event")

    @fact flag --> true
  end

  facts("Unbinding events should work") do
    flag = false
    obs  = Event.create()
    function handler() flag = true end

    Event.on(obs, "event", handler)
    Event.off(obs, "event", handler)
    Event.fire(obs, "event")

    @fact flag --> false
  end
end