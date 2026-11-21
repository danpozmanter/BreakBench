# LEVEL: LANGUAGE

walk(n) = walk(n + 1) + 1

try
    walk(0)
catch e
    e isa StackOverflowError && println("stack overflow")
end
