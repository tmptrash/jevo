#
# Unit tests helper
#
# @author DeadbraiN
#
const IP      = ip"127.0.0.1"
const PORT    = Config.val(:CONNECTION_SERVER_PORT)
const TIMEOUT = 30

#
# Waits for timeout or function fn() to return true. Between
# waitings, it runs yield() function.
#
function wait(fn::Function)
  i = 0
  t = Timer((t)->(yield(); if (i+=1) > TIMEOUT || fn() close(t) end), 0, 1)
  while isopen(t) yield() end
end