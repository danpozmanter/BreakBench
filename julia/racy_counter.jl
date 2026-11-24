function main()
    counter = 0
    tasks = [Threads.@spawn begin
        for _ in 1:1_000_000
            counter += 1
        end
    end for _ in 1:8]
    foreach(wait, tasks)
    println(counter)
end

main()
