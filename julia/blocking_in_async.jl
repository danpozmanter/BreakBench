function main()
    start = time()
    @sync for _ in 1:2
        Threads.@spawn sleep(0.5)
    end
    println(time() - start < 0.8 ? "concurrent" : "serial")
end

main()
