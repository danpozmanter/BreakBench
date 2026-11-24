struct Point
    x::Int
    y::Int
end

function main()
    ps = sort([Point(3, 4), Point(1, 2)]) # CONTROL! ps = sort([Point(3, 4), Point(1, 2)], by = p -> p.x)
    println(ps[1].x)
end

main()
