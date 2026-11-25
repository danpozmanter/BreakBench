function main()
    ready = ARGS[1] == "yes"
    approved = ARGS[2] == "yes"
    ok = ready && approved
    println(ok ? "go" : "wait")
end

main()
