show_value(f::Float64) = println(round(Int64, f))

function main()
    show_value(parse(Int64, ARGS[1]))
end

main()
