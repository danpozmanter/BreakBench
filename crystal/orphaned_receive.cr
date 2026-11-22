answer = Channel(Int32).new
spawn { answer.send("x".to_i) }
puts answer.receive
