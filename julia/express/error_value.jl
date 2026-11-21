# LEVEL: LANGUAGE

function parse_port(s)::Union{Int,ArgumentError}
    p = tryparse(Int, s)
    p === nothing ? ArgumentError("not a number: $s") : p
end

r = parse_port("x")
println(r isa ArgumentError ? "error" : r)
