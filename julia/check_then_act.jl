const state_lock = ReentrantLock()
const checked = Threads.Barrier(2)
const claimed = Ref(false)
const winners = Threads.Atomic{Int}(0)

function claim()
    lock(state_lock)
    available = !claimed[]
    unlock(state_lock) # BREAK!
    # CONTROL! if available; claimed[] = true; end; unlock(state_lock)
    barrier(checked)
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
