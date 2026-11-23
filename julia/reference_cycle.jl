mutable struct Node
    data::Vector{UInt8}
    other::Union{Node, Nothing}
end

Node() = Node(fill(0x01, 4096), nothing)

function main()
    n = parse(Int, ARGS[1])
    for _ in 1:n
        parent = Node()
        child = Node()
        parent.other = child
        child.other = parent
    end
    println("done")
end

main()
