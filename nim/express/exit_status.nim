# LEVEL: STD

import std/osproc

let p = startProcess("false", options = {poUsePath})
echo p.waitForExit()
p.close()
