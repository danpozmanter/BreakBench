struct Point
    x::Int
    y::Int
    label::String
end

Base.:(==)(a::Point, b::Point) = a.x == b.x && a.y == b.y

function main()
    println(length(Set([Point(1, 2, "a"), Point(1, 2, "b")])))
end

main()
