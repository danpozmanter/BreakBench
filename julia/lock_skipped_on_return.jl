const LOCK = ReentrantLock()
const balance = Ref(100)

function withdraw(amount)
    lock(LOCK)
    if amount > balance[]
        return
    end
    balance[] -= amount
    unlock(LOCK)
end

withdraw(500)
worker = Threads.@spawn withdraw(30)
wait(worker)
println(balance[])
