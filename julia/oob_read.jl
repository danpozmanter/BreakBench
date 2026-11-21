struct Frame
    buf::Vector{Int}
    secret::Int
end

function main()
    f = Frame([1, 2, 3, 4], 42)
    idx = parse(Int, ARGS[1])
    println(f.buf[idx + 1])
end

main()
