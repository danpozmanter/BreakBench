@enum Color red green blue

function main()
    println("before")
    flush(stdout)
    println(Color(parse(Int, ARGS[1]))) # CONTROL! n = parse(Int, ARGS[1]); println(n in Int.(instances(Color)) ? Color(n) : "invalid")
end

main()
