function walk(n::Int)::Int
    n == 0 && return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007
end

println(walk(parse(Int, ARGS[1])))
