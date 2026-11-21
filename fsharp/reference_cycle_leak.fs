type Node() =
    member val Next: Node option = None with get, set
    member val Payload: byte[] = Array.zeroCreate 2048

type Obj() =
    member val Payload: byte[] = Array.zeroCreate 2048
    member val Callback: (unit -> int) = (fun () -> 0) with get, set

[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    let mutable total = 0L
    for _ in 1..n do
        let a = Node()
        let b = Node()
        a.Next <- Some b
        b.Next <- Some a
        let o = Obj()
        o.Callback <- fun () -> o.Payload.Length
        total <- total + int64 (o.Callback())
    printfn "%s" (if total < 0L then "unreachable" else "done")
    0
