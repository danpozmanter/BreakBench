count = 0
done = Channel(Nil).new
2.times do
  spawn do
    1_000_000.times { count += 1 }
    done.send(nil)
  end
end
2.times { done.receive }
puts count
