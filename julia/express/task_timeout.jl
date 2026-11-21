# LEVEL: STD

function main()
    t = @async sleep(5)
    status = timedwait(() -> istaskdone(t), 0.1)
    println(status == :ok ? "done" : "timed out")
    exit(0)
end
main()
