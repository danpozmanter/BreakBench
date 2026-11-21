# LEVEL: LANGUAGE

function main()
    t = @async (sleep(0.05); 7)
    println("started")
    println(fetch(t))
end
main()
