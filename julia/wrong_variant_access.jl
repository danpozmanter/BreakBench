function main()
    v::Union{Int,String} = 42
    local s::String = v
    println(length(s))
end

main()
