abstract type Shape end
struct Circle <: Shape end

function describe(s::Shape)
    if s isa Shape
        "other"
    elseif s isa Circle
        "circle"
    end
end

function main()
    println(describe(Circle()))
end

main()
