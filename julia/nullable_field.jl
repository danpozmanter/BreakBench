struct User
    name::Union{Nothing,String}
end

decoded = User(nothing)
println(length(decoded.name)) # CONTROL! println(decoded.name === nothing ? "no name" : length(decoded.name))
