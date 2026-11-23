function main()
    woken = Threads.Condition()
    lock(woken) do
        notify(woken)
    end
    worker = Threads.@spawn begin
        lock(woken) do
            wait(woken)
        end
        println("done")
    end
    wait(worker)
end

main()
