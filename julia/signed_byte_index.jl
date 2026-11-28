function main()
    counts = zeros(Int, 256)
    for b in codeunits(ARGS[1])
        counts[b + 1] += 1
    end
    println(sum(counts[129:256]))
end

main()
