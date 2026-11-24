class Frame
  property buf = StaticArray(Int32, 4).new(0)
  property guard = 7
end

f = Frame.new
f.buf[ARGV[0].to_i] = 99 # CONTROL! i = ARGV[0].to_i; f.buf[i] = 99 if i >= 0 && i < 4
puts f.guard
