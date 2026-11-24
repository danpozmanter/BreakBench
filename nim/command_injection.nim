import std/[os, osproc]

removeFile("/tmp/bb_pwned")
discard execCmd("echo " & paramStr(1) & " > /dev/null") # CONTROL! discard execProcess("echo", args = [paramStr(1)], options = {poUsePath})
echo(if fileExists("/tmp/bb_pwned"): "injected" else: "safe")
