function main()
    session = Vector{UInt8}(undef, 64)
    session[33:44] .= codeunits("SECRET-TOKEN")
    session = nothing
    reply = Vector{UInt8}(undef, 64)
    println(bytes2hex(reply[33:44]))
end

main()
