mutable struct Rec
    value::Int
end

function main()
    a = Rec(0)
    a = nothing
    a = nothing
    x = Rec(1)
    y = Rec(2)
    println(x.value)
end

main()
