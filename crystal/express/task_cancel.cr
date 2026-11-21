# LEVEL: STD

stop = Channel(Nil).new
stopped = Channel(Nil).new
spawn do
  loop do
    select
    when stop.receive
      break
    when timeout(1.millisecond)
    end
  end
  stopped.send(nil)
end
sleep 20.milliseconds
stop.send(nil)
stopped.receive
puts "stopped"
