class Frame
  property buf : StaticArray(Int32, 4) = StaticArray[1, 2, 3, 4]
  property secret = 42
end

f = Frame.new
puts f.buf[ARGV[0].to_i] # CONTROL! i = ARGV[0].to_i; puts(i >= 0 && i < 4 ? f.buf[i] : "out of range")
