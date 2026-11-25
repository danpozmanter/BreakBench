function parse_order(line)
    parts = split(line, ",")
    parse(Int, parts[3]) # BREAK!
    # CONTROL! parse(Int, parts[2])
end

try
    println(parse_order("widget,5"))
catch
    println("invalid order")
end
