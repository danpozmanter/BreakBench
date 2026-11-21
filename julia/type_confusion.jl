add(a::Int, b::Int) = a + b

function main()
    raw = ARGS[1]
    println(add(raw, 3))
end

main()
