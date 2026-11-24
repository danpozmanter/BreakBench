woken = Channel(Nil).new # CONTROL! woken = Channel(Nil).new(1)
done = Channel(Nil).new
woken.send(nil)
spawn do
  woken.receive
  puts "done"
  done.send(nil)
end
done.receive
