passes = 0
i : UInt8 = 0 # BREAK!
# CONTROL! i : UInt16 = 0
while i < 300
  passes += 1
  i += 1
end
puts passes
