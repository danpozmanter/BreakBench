rounds = ARGV[0].to_i
rounds.times do |i|
  answers = Channel(Array(Int64)).new
  spawn { answers.send(Array.new(8192, i.to_i64)) }
  spawn { answers.send(Array.new(8192, i.to_i64 + 1)) }
  first = answers.receive
  raise "short" unless first.size == 8192
end
puts "done"
