const LOCK = ReentrantLock()
const ledger = Dict(:debits => 0, :credits => 0)

function post()
    lock(LOCK) do
        ledger[:debits] += 50
        ledger[:debits] > 0 && error("crash mid-update")
        ledger[:credits] += 50
    end
end

worker = Threads.@spawn post()
try
    wait(worker)
catch
    println(stderr, "worker failed")
end
lock(LOCK) do
    println(ledger[:debits] == ledger[:credits] ? "balanced" : "unbalanced")
end
