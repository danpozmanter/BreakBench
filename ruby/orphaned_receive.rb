answer = Queue.new
Thread.new { answer << Integer("x") }
puts answer.pop
