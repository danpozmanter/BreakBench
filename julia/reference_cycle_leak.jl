mutable struct Node
    next::Union{Node,Nothing}
    payload::Vector{UInt8}
end

mutable struct Obj
    payload::Vector{UInt8}
    callback::Union{Function,Nothing}
end

function main()
    total = 0
    for _ in 1:parse(Int, ARGS[1])
        a = Node(nothing, zeros(UInt8, 2048))
        b = Node(a, zeros(UInt8, 2048))
        a.next = b
        o = Obj(zeros(UInt8, 2048), nothing)
        o.callback = () -> length(o.payload)
        total += o.callback()
    end
    println(total < 0 ? "unreachable" : "done")
end

main()
