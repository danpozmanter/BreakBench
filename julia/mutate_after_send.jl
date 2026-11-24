function main()
    lists = Channel{Vector{Int}}(1)
    go_on = Channel{Bool}(1)
    worker = Threads.@spawn begin
        received = take!(lists)
        take!(go_on)
        println(received[1])
    end
    list = [1, 2, 3]
    put!(lists, list) # CONTROL! put!(lists, copy(list))
    list[1] = 99
    put!(go_on, true)
    wait(worker)
end

main()
