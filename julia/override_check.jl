abstract type Shape end
struct Circle <: Shape end

describe(s::Shape) = "shape"
descibe(c::Circle) = "circle" # CONTROL! describe(c::Circle) = "circle"

function main()
    println(describe(Circle()))
end

main()
