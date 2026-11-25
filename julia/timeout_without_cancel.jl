const balance = Threads.Atomic{Int}(100)

function charge(gate)
    wait(gate)
    Threads.atomic_sub!(balance, 30)
end

function main()
    gate = Base.Event()
    attempt = Threads.@spawn charge(gate)
    if timedwait(() -> istaskdone(attempt), 0.1) == :timed_out
        notify(gate)
        charge(gate) # BREAK!
    end
    wait(attempt)
    println(balance[])
end

main()
