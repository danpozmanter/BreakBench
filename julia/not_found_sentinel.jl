function main()
    line = ARGS[1]
    pos = findfirst(':', line)
    println(line[pos + 1:end])
end

main()
