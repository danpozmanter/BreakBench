# LEVEL: STD

p = run(`sleep 10`; wait=false)
sleep(0.1)
kill(p)
wait(p)
println(p.termsignal != 0 ? "killed" : "finished")
