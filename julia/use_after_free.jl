mutable struct Rec
    value::Int
end

function main()
    a = Rec(1234)
    b = a
    a = nothing
    c = Rec(6666)
    println(b.value)
end

main()
