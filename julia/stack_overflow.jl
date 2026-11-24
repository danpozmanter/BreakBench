function walk(n::Int)::Int
    n == 0 && return 0
    return (walk(n - 1) * 31 + n) % 1_000_000_007
end

println(walk(parse(Int, ARGS[1]))) # CONTROL! let n = parse(Int, ARGS[1]); acc = 0; for i in 1:n; acc = (acc * 31 + i) % 1_000_000_007; end; println(acc); end
