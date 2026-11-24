answer = Channel(Int32).new # CONTROL! answer = Channel(Int32?).new
spawn { answer.send("x".to_i) } # CONTROL! spawn { answer.send("x".to_i?) }
puts answer.receive # CONTROL! n = answer.receive; puts(n ? n : "failed")
