fs = [] of -> Int32
3.times do |i|
  fs << -> { i }
end
puts fs.map(&.call).join(",")
