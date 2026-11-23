function main()
    count = parse(Int, ARGS[1])
    total = 0
    open("/dev/zero") do source
        for _ in 1:count
            message = read(source, 4096)
            total += length(message)
        end
    end
    println(total)
end

main()
