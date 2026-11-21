count = 0
threads = 2.times.map { Thread.new { 1_000_000.times { count += 1 } } }
threads.each(&:join)
puts count
