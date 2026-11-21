pair(a, b) = "$a $b"

function main()
    n = Ref(0)
    next() = (n[] += 1)
    println(pair(next(), next()))
end

main()
