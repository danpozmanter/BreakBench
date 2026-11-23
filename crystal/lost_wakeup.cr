woken = Channel(Nil).new
done = Channel(Nil).new
woken.send(nil)
spawn do
  woken.receive
  puts "done"
  done.send(nil)
end
done.receive
