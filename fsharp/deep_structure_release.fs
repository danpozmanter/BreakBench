[<AllowNullLiteral>]
type Node(value: int64, next: Node) =
    member _.Value = value
    member _.Next = next

let buildAndRelease (n: int64) =
    let mutable head: Node = null
    for i in 0L .. n - 1L do
        head <- Node(i, head)
    if isNull head then 0L else head.Value

[<EntryPoint>]
let main argv =
    buildAndRelease (int64 argv.[0]) |> ignore
    System.GC.Collect()
    printfn "done"
    0
