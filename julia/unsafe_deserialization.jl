using Serialization

struct Session
    user::String
end

struct Cleanup
    path::String
end

function Serialization.deserialize(s::AbstractSerializer, ::Type{Cleanup})
    path = deserialize(s)
    println("cleanup ran")
    return Cleanup(path)
end

attacker = IOBuffer()
serialize(attacker, Cleanup("/tmp/bb_cache"))
seekstart(attacker)
try
    session = deserialize(attacker)
    println(session.user)
catch
    println("rejected")
end
