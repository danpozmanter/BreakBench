joined = joinpath("/srv/app/uploads", ARGS[1]) # CONTROL! joined = joinpath("/srv/app/uploads", lstrip(ARGS[1], '/'))
println(startswith(joined, "/srv/app/uploads/") ? "inside" : "escaped")
