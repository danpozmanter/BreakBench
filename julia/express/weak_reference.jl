# LEVEL: LANGUAGE

mutable struct Node end

function make()
    WeakRef(Node())
end

w = make()
GC.gc()
println(w.value === nothing ? "gone" : "alive")
