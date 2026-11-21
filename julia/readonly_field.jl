struct Config
    port::Int
end

function main()
    c = Config(8080)
    c.port = 1
    println(c.port)
end

main()
