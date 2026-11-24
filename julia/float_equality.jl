function main()
    x = parse(Float64, ARGS[1])
    y = parse(Float64, ARGS[2])
    a = x + y
    println(a == 0.3 ? "equal" : "not equal") # CONTROL! println(isapprox(a, 0.3) ? "equal" : "not equal")
end
main()
