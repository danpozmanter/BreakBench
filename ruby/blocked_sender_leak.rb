def first_answer(workers)
  answers = Queue.new
  2.times { workers << Thread.new { answers << 42 } }
  answers.pop
end

workers = []
puts first_answer(workers)
workers.each(&:join)
puts "done"
