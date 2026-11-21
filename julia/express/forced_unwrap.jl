# LEVEL: LANGUAGE

find(id) = id == 1 ? 36 : nothing

function main()
    println("before")
    flush(stdout)
    println(find(2) + 1)
end

main()
