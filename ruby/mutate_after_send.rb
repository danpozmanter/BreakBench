lists = Queue.new
go_on = Queue.new
worker = Thread.new do
  received = lists.pop
  go_on.pop
  puts received[0]
end
list = [1, 2, 3]
lists << list
list[0] = 99
go_on << true
worker.join
