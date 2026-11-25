mutable struct Rec
    data::Vector{UInt8}
end

function main()
    n = parse(Int, ARGS[1])
    seen = 0
    for _ in 1:n
        rec = Rec(fill(0x01, 4096))
        seen += rec.data[1]
    end
    println(seen == n ? "done" : "lost")
end

main()
