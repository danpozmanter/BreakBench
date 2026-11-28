function main()
    claimed = parse(Int, ARGS[1])
    buf = zeros(UInt8, 64)
    buf[3:17] .= codeunits("SECRET-KEY-0042")
    buf[1:2] .= codeunits("hi")
    payload = view(buf, 1:2)
    # CONTROL! if claimed > length(payload); println("invalid"); return; end
    reply = payload[1:claimed]
    println(String(reply))
end

main()
