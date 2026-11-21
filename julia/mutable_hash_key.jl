seen = Set{Vector{Int}}()
key = [1, 2]
push!(seen, key)
key[1] = 9
for e in seen
    println(e in seen ? "found" : "lost")
end
