# LEVEL: STD

function main()
    t = @async while true
        sleep(0.001)
    end
    sleep(0.02)
    schedule(t, InterruptException(); error=true)
    try
        wait(t)
    catch
    end
    println("stopped")
end
main()
