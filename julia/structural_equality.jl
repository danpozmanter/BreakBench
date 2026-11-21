struct P
    x::Int
    y::Int
end

function main()
    a = P(1, 2)
    b = P(1, 2)
    println(a == b ? "equal" : "different")
end

main()
