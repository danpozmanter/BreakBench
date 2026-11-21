struct Point
    x::Int
    y::Int
end

function main()
    ps = sort([Point(3, 4), Point(1, 2)])
    println(ps[1].x)
end

main()
