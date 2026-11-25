abstract type Shape end
struct Square <: Shape end

area(::Shape) = 0
describe(s::Shape) = "area $(area(s))"
area(::Square) = 4

function main()
    println(describe(Square()))
end

main()
