function main()
    qty = tryparse(Int, ARGS[1])
    if qty
        println("have $qty")
    else
        println("missing")
    end
end

main()
