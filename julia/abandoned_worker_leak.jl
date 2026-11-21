function main(rounds)
    for i in 1:rounds
        answers = Channel{Vector{Int}}()
        Threads.@spawn put!(answers, fill(i, 8192))
        Threads.@spawn put!(answers, fill(i + 1, 8192))
        first = take!(answers)
        length(first) == 8192 || error("short")
    end
    println("done")
end

main(parse(Int, ARGS[1]))
