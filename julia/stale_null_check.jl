struct User
    name::String
end

mutable struct Session
    user::Union{User, Nothing}
end

logout!(session::Session) = (session.user = nothing)

function main()
    session = Session(User("alice"))
    if session.user !== nothing
        logout!(session)
        println(length(session.user.name))
    end
end

main()
