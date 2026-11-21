# LEVEL: STD

counts = Dict{String,Int}()
for w in ["a", "b", "a"]
    counts[w] = get(counts, w, 0) + 1
end
println("a=", counts["a"], " b=", counts["b"])
