function main()
    table = Dict{Int,Int}()
    tasks = [Threads.@spawn begin
        for k in 0:99_999
            table[t * 100_000 + k] = k
        end
    end for t in 0:7]
    foreach(wait, tasks)
    println(length(table))
end

main()
