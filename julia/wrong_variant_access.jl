function main()
    v::Union{Int,String} = 42
    local s::String = v # CONTROL! println(v isa String ? length(v) : "not text")
    println(length(s)) # BREAK!
end

main()
