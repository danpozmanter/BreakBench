const state_lock = ReentrantLock()
const claimed = Ref(false)
const winners = Threads.Atomic{Int}(0)
const arrived = Threads.Atomic{Int}(0)

function rendezvous()
    Threads.atomic_add!(arrived, 1)
    while arrived[] < 2
        yield()
    end
end

function claim()
    lock(state_lock)
    available = !claimed[]
    unlock(state_lock) # BREAK!
    # CONTROL! if available; claimed[] = true; end; unlock(state_lock)
    rendezvous()
    if available
        lock(state_lock) do
            claimed[] = true
            Threads.atomic_add!(winners, 1)
        end
    end
end
@sync begin
    Threads.@spawn claim()
    Threads.@spawn claim()
end
println(winners[])
