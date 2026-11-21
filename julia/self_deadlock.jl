const LOCK = ReentrantLock()
balance = Ref(0)

function deposit(amount)
    lock(LOCK) do
        balance[] += amount
    end
end

lock(LOCK) do
    deposit(10)
end
println("done")
