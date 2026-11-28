function main()
    n = parse(Int64, ARGS[1])
    println(Base.Checked.checked_add(n, 1)) # CONTROL! println(Int128(n) + 1)
end

main()
