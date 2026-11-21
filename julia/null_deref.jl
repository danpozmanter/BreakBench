struct User
    name::String
end

find_user(id) = id == 1 ? User("alice") : nothing

function main()
    u = find_user(parse(Int, ARGS[1]))
    println(length(u.name))
end

main()
