function main()
    line = ARGS[1]
    pos = findfirst(':', line)
    println(line[pos + 1:end]) # CONTROL! println(pos === nothing ? "no colon" : line[pos + 1:end])
end

main()
