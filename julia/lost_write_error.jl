function main()
    open("/dev/full", "w") do io # CONTROL! try open("/dev/full", "w") do io
        println(io, "data")
    end # CONTROL! end; println("saved") catch; println("failed") end
    println("saved") # BREAK!
end

main()
