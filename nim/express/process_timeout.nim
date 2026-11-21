# LEVEL: STD

import std/[os, osproc]

let p = startProcess("sleep", args = ["10"], options = {poUsePath})
sleep(100)
p.kill()
let code = p.waitForExit()
echo(if code != 0: "killed" else: "finished")
p.close()
