start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
2.times.map { Thread.new { sleep 0.5 } }.each(&:join)
puts Process.clock_gettime(Process::CLOCK_MONOTONIC) - start < 0.8 ? "concurrent" : "serial"
