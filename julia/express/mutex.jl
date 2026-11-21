# LEVEL: STD

function main()
    lock = ReentrantLock()
    counter = Ref(0)
    tasks = [Threads.@spawn(for _ in 1:100_000; @lock lock counter[] += 1; end) for _ in 1:2]
    foreach(wait, tasks)
    println(counter[])
end
main()
