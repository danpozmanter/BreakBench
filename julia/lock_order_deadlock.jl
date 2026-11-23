function transfer(first, second)
    lock(first) do
        barrier(ready)
        lock(second) do
        end
    end
end

a = ReentrantLock()
b = ReentrantLock()
ready = Threads.Barrier(2)
t1 = Threads.@spawn transfer(a, b)
t2 = Threads.@spawn transfer(b, a)
wait(t1)
wait(t2)
println("finished")
