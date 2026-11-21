# LEVEL: STD

function main()
    counter = Threads.Atomic{Int}(0)
    tasks = [Threads.@spawn(for _ in 1:100_000; Threads.atomic_add!(counter, 1); end) for _ in 1:2]
    foreach(wait, tasks)
    println(counter[])
end
main()
