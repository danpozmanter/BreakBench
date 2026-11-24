function main()
    ids = [10, 20, 30]
    id = ARGS[1]
    println(id in ids ? "found" : "missing") # CONTROL! println(parse(Int, id) in ids ? "found" : "missing")
end
main()
