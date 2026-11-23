struct User
    name::String
end

function main()
    users = Vector{User}(undef, 3)
    users[2] = User("bob")
    users[3] = User("carol")
    println(length(users[1].name))
end

main()
