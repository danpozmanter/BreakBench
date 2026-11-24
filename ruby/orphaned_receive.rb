answer = Queue.new
Thread.new { answer << Integer("x") } # CONTROL! Thread.new { answer << Integer("x", exception: false) }
puts answer.pop # CONTROL! got = answer.pop; puts(got.nil? ? "failed" : got)
