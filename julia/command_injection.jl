rm("/tmp/bb_pwned"; force = true)
msg = ARGS[1]
run(pipeline(`echo $msg`, devnull))
println(isfile("/tmp/bb_pwned") ? "injected" : "safe")
