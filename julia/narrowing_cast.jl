function main()
    v = parse(Int, ARGS[1])
    b = UInt8(v) # CONTROL! b = 0 <= v <= 255 ? UInt8(v) : nothing
    println(b) # CONTROL! println(b === nothing ? "out of range" : b)
end

main()
