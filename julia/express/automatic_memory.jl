# LEVEL: LANGUAGE

struct Rec
    id::Int
    data::Vector{UInt8}
end

function main()
    last = Rec(0, UInt8[])
    for i in 0:3_999_999
        last = Rec(i, zeros(UInt8, 1016))
    end
    println(last.id)
end

main()
