cached_count(name) = name == "ada" ? 4 : nothing

function main()
    cached = cached_count(ARGS[1])
    count = something(cached, 0) + 1
    println(count)
end

main()
