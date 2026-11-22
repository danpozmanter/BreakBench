find_name(id) = id == 1 ? "alice" : nothing

function main()
    name = find_name(parse(Int, ARGS[1]))
    println("hello, $name")
end

main()
