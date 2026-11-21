# LEVEL: LANGUAGE

t = Threads.@spawn error("boom")
try
    wait(t)
catch
    println("worker crashed")
end
