# LEVEL: STD

pid = Process.spawn("sleep", "10")
sleep 0.1
Process.kill("KILL", pid)
Process.wait(pid)
puts $?.signaled? ? "killed" : "finished"
