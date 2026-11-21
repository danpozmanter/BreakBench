a = parse(Int, ARGS[1]) != 0
b = true
r = "unset"
if a
    if b
        r = "both"
    end
else
    r = "not a"
end
println(r)
