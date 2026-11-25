require "wait_group"

def first_answer(workers : WaitGroup) : Int32
  answers = Channel(Int32).new # BREAK!
  # CONTROL! answers = Channel(Int32).new(2)
  2.times { workers.spawn { answers.send(42) } }
  answers.receive
end

workers = WaitGroup.new
puts first_answer(workers)
workers.wait
puts "done"
