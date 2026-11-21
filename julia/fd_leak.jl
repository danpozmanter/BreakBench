function main()
    n = parse(Int, ARGS[1])
    write("/tmp/bb_fd.txt", "x")
    for _ in 1:n
        f = open("/tmp/bb_fd.txt")
        read(f, UInt8)
    end
    println("done")
end

main()
