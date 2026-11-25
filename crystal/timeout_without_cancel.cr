require "wait_group"

balance = 100
gate = Channel(Nil).new
done = Channel(Nil).new(1)
tasks = WaitGroup.new

charge = ->{
  gate.receive?
  balance -= 30
}

tasks.spawn do
  charge.call
  done.send(nil)
end

select
when done.receive
when timeout(100.milliseconds)
  gate.close
  charge.call # BREAK!
end
tasks.wait
puts balance
