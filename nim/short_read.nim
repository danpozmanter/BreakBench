import std/[osproc, streams]

let child = startProcess("sh", args = ["-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"], options = {poUsePath})
var message = newString(16)
child.outputStream.readData(addr message[0], 16) # CONTROL! discard child.outputStream.readData(addr message[0], 16)
discard child.waitForExit()
echo message
