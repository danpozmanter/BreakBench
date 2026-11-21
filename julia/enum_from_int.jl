@enum Color red green blue

function main()
    println("before")
    flush(stdout)
    println(Color(parse(Int, ARGS[1])))
end

main()
