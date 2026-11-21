# LEVEL: STD

process = Process.new("sleep", ["10"])
sleep 100.milliseconds
process.signal(Signal::KILL)
status = process.wait
puts status.signal_exit? ? "killed" : "finished"
