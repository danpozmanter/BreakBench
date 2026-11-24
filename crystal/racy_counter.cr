counter = 0_i64
done = Channel(Nil).new
8.times do
  spawn do
    1_000_000.times { counter += 1 }
    done.send(nil)
  end
end
8.times { done.receive }
puts counter
