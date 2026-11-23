struct User
    name::Union{Nothing,String}
end

decoded = User(nothing)
println(length(decoded.name))
