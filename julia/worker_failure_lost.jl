worker = Threads.@spawn sum(parse.(Int, ARGS))
total = fetch(worker) # CONTROL! total = try fetch(worker) catch; nothing end
println("total $total") # CONTROL! println(total === nothing ? "failed" : "total $total")
