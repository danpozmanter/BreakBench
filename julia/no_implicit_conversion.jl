show_value(n::Int32) = println(n) # CONTROL! show_value(n::Int64) = println(n)

function main()
    show_value(parse(Int64, ARGS[1]))
end

main()
