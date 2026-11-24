const arrived = Threads.Atomic{Int}(0)

function rendezvous()
    Threads.atomic_add!(arrived, 1)
    while arrived[] < 2
        yield()
    end
end

function transfer(first, second)
    lock(first) do
        rendezvous() # BREAK!
        lock(second) do
        end
    end
end

a = ReentrantLock()
b = ReentrantLock()
t1 = Threads.@spawn transfer(a, b)
t2 = Threads.@spawn transfer(b, a) # CONTROL! t2 = Threads.@spawn transfer(a, b)
wait(t1)
wait(t2)
println("finished")
