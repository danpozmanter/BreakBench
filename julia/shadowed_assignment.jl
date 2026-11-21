function main()
    status = "pending"
    if ARGS[1] == "ok"
        status = "done"
        println(stderr, "status: $status")
    end
    println(status)
end

main()
