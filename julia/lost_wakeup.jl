function main()
    woken = Threads.Condition()
    # CONTROL! ready = Ref(false)
    lock(woken) do
        notify(woken) # CONTROL! ready[] = true; notify(woken)
    end
    worker = Threads.@spawn begin
        lock(woken) do
            wait(woken) # CONTROL! while !ready[]; wait(woken); end
        end
        println("done")
    end
    wait(worker)
end

main()
