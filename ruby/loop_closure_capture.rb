fs = []
(0...3).each do |i|
  fs << -> { i }
end
puts fs.map(&:call).join(",")
