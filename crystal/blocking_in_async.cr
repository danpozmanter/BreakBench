start = Time.monotonic
done = Channel(Nil).new
2.times do
  spawn do
    sleep 500.milliseconds
    done.send(nil)
  end
end
2.times { done.receive }
puts Time.monotonic - start < 800.milliseconds ? "concurrent" : "serial"
