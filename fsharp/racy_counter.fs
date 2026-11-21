open System.Threading

[<EntryPoint>]
let main _ =
    let mutable count = 0L
    let add () = for _ in 1 .. 1_000_000 do count <- count + 1L
    let a = Thread(add)
    let b = Thread(add)
    a.Start()
    b.Start()
    a.Join()
    b.Join()
    printfn "%d" count
    0
