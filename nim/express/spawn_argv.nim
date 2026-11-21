# LEVEL: STD

import std/[osproc, streams]

let p = startProcess("echo", args = ["hi; touch /tmp/bb_x"], options = {poUsePath})
let output = p.outputStream.readAll()
discard p.waitForExit()
p.close()
stdout.write(output)
