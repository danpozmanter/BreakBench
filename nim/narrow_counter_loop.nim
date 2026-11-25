var passes = 0
var i: uint8 = 0 # BREAK!
# CONTROL! var i: uint16 = 0
while i < 300:
  inc passes
  inc i
echo passes
