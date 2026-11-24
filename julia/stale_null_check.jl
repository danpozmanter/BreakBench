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
        logout!(session) # CONTROL! println(length(session.user.name))
        println(length(session.user.name)) # CONTROL! logout!(session)
    end
end

main()
