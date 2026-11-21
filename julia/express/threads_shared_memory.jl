# LEVEL: LANGUAGE

function main()
    slots = zeros(Int, 10)
    tasks = [Threads.@spawn(for i in s:s+4; slots[i + 1] = i; end) for s in (0, 5)]
    foreach(wait, tasks)
    println(sum(slots))
end
main()
