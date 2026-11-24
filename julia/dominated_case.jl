abstract type Shape end
struct Circle <: Shape end

function describe(s::Shape)
    if s isa Shape # CONTROL! if s isa Circle
        "other" # CONTROL! "circle"
    elseif s isa Circle # CONTROL! elseif s isa Shape
        "circle" # CONTROL! "other"
    end
end

function main()
    println(describe(Circle()))
end

main()
