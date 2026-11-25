function main()
    text = try
        read("/nonexistent/bb.conf", String)
    catch e
        e isa SystemError || rethrow()
        println(stderr, "config missing: ", e)
        return # BREAK!
        # CONTROL! exit(1)
    end
    println(length(text))
end

main()
