lists = Channel(Array(Int32)).new
go_on = Channel(Bool).new
done = Channel(Nil).new
spawn do
  received = lists.receive
  go_on.receive
  puts received[0]
  done.send(nil)
end
list = [1, 2, 3]
lists.send(list)
list[0] = 99
go_on.send(true)
done.receive
