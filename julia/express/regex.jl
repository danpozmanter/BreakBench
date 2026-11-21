# LEVEL: LANGUAGE

re = r"^[a-z]+[0-9]{2}$"
println(occursin(re, "abc12"), " ", occursin(re, "abc1"))
