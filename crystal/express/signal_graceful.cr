# LEVEL: STD

done = Channel(Nil).new
Signal::TERM.trap { done.send(nil) }
Process.signal(Signal::TERM, Process.pid)
done.receive
puts "cleaned up"
