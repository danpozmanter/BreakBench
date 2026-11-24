struct User
    name::String
end

function main()
    users = Vector{User}(undef, 3)
    users[2] = User("bob")
    users[3] = User("carol")
    println(length(users[1].name)) # CONTROL! println(isassigned(users, 1) ? length(users[1].name) : "missing")
end

main()
