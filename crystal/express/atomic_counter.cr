# LEVEL: STD

counter = Atomic(Int64).new(0)
done = Channel(Nil).new
2.times do
  spawn do
    100_000.times { counter.add(1) }
    done.send(nil)
  end
end
2.times { done.receive }
puts counter.get
