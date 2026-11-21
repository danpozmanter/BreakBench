class Frame
  property buf : StaticArray(Int32, 4) = StaticArray[1, 2, 3, 4]
  property secret = 42
end

f = Frame.new
puts f.buf[ARGV[0].to_i]
