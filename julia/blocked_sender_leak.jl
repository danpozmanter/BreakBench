function first_answer(workers)
    answers = Channel{Int}() # BREAK!
    # CONTROL! answers = Channel{Int}(2)
    for _ in 1:2
        push!(workers, Threads.@spawn put!(answers, 42))
    end
    take!(answers)
end

function main()
    workers = Task[]
    println(first_answer(workers))
    foreach(wait, workers)
    println("done")
end

main()
