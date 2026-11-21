worker = Threads.@spawn sum(parse.(Int, ARGS))
total = fetch(worker)
println("total $total")
