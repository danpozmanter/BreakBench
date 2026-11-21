# LEVEL: LANGUAGE

struct Config
    port::Int
end

function main()
    c = Config(8080)
    try
        c.port = 1
    catch e
        e isa ErrorException || rethrow()
    end
    println(c.port)
end

main()
