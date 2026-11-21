rounds = ARGV[0].to_i
rounds.times do |i|
  answers = Queue.new
  2.times { |w| Thread.new { answers << Array.new(8192, i + w) } }
  first = answers.pop
  raise "short" unless first.size == 8192
end
puts "done"
