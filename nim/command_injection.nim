import std/[os, osproc]

removeFile("/tmp/bb_pwned")
discard execCmd("echo " & paramStr(1) & " > /dev/null")
echo(if fileExists("/tmp/bb_pwned"): "injected" else: "safe")
