// LEVEL: STD

[<EntryPoint>]
let main _ =
    let cause = exn "not found"
    let e = System.Exception("loading config: not found", cause)
    printfn "%s" e.Message
    printfn "%s" e.InnerException.Message
    0
