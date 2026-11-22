function main()
    answer = Channel{Int}()
    Threads.@spawn put!(answer, parse(Int, "x"))
    println(take!(answer))
end

main()
