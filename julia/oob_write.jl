mutable struct Frame
    buf::Vector{Int}
    guard::Int
end

function main()
    f = Frame(zeros(Int, 4), 7)
    idx = parse(Int, ARGS[1])
    f.buf[idx + 1] = 99
    println(f.guard)
end

main()
