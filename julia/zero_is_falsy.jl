function main()
    qty = tryparse(Int, ARGS[1])
    if qty # CONTROL! if qty !== nothing
        println("have $qty")
    else
        println("missing")
    end
end

main()
