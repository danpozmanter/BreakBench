function transfer(first, second)
    lock(first) do
        sleep(0.1)
        lock(second) do
        end
    end
end

a = ReentrantLock()
b = ReentrantLock()
t1 = Threads.@spawn transfer(a, b)
t2 = Threads.@spawn transfer(b, a)
wait(t1)
wait(t2)
println("finished")
