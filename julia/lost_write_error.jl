function main()
    open("/dev/full", "w") do io
        println(io, "data")
    end
    println("saved")
end

main()
