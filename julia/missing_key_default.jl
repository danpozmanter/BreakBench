stock = Dict("apple" => 3, "plum" => 4)
name = ARGS[1]
println(stock[name] + 5) # CONTROL! println(haskey(stock, name) ? stock[name] + 5 : "unknown")
