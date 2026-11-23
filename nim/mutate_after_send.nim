var lists: Channel[seq[int]]
var goOn: Channel[bool]

proc worker() {.thread.} =
  let received = lists.recv()
  discard goOn.recv()
  echo received[0]

lists.open()
goOn.open()
var t: Thread[void]
createThread(t, worker)
var list = @[1, 2, 3]
lists.send(list)
list[0] = 99
goOn.send(true)
joinThread(t)
