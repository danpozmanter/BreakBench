counter = 0
threads = Array.new(8) do
  Thread.new do
    1_000_000.times { counter += 1 }
  end
end
threads.each(&:join)
puts counter
