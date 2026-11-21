joined = joinpath("/srv/app/uploads", ARGS[1])
println(startswith(joined, "/srv/app/uploads/") ? "inside" : "escaped")
