mutable struct Node
    value::Int
    next::Union{Node,Nothing}
end

function build_and_release(n)
    head = nothing
    for i in 1:n
        head = Node(i, head)
    end
    head === nothing ? 0 : head.value
end

build_and_release(parse(Int, ARGS[1]))
GC.gc()
println("done")
