type Node() =
    member val Data: byte[] = Array.create 4096 1uy
    member val Other: Node option = None with get, set

[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    for _ in 1L .. n do
        let parent = Node()
        let child = Node()
        parent.Other <- Some child
        child.Other <- Some parent
    printfn "done"
    0
