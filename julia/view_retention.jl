function main()
    n = parse(Int, ARGS[1])
    heads = Vector{Vector{UInt8}}()
    prefixes = String[]
    for i in 1:n
        buf = fill(UInt8(i & 255), 32768)
        push!(heads, buf[1:16])
        big = repeat(string(Char(97 + i % 26)), 32768)
        push!(prefixes, big[1:16])
    end
    println(length(heads))
end

main()
