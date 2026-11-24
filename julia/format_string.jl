using Printf

msg = ARGS[1]
@eval @printf($msg) # CONTROL! print(msg)
println()
