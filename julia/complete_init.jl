struct Config
    timeout::Int
    retries::Int
end

function main()
    c = Config(30) # CONTROL! c = Config(30, 3)
    println(c.retries)
end

main()
