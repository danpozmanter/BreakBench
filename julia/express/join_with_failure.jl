# LEVEL: LANGUAGE

function main()
    t = Threads.@spawn error("bad input")
    try
        fetch(t)
    catch e
        println("worker failed: ", e.task.result.msg)
    end
end
main()
