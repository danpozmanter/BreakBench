function main()
    count = 0
    @sync for _ in 1:2
        Threads.@spawn for _ in 1:1_000_000
            count += 1
        end
    end
    println(count)
end

main()
