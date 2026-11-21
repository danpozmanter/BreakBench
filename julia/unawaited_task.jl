function save(store, lock_)
    sleep(0.05)
    lock(lock_) do
        push!(store, 1)
    end
end

function main()
    store = Int[]
    guard = ReentrantLock()
    task = Threads.@spawn save(store, guard) # CONTROL! wait(Threads.@spawn save(store, guard))
    println(length(store))
end

main()
