mutable struct Frame
    buf::Vector{Int}
    guard::Int
end

function main()
    f = Frame(zeros(Int, 4), 7)
    idx = parse(Int, ARGS[1])
    f.buf[idx + 1] = 99 # CONTROL! if 0 <= idx < 4; f.buf[idx + 1] = 99; end
    println(f.guard)
end

main()
