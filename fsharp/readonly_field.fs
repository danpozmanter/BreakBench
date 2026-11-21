type Config = { Port: int }

[<EntryPoint>]
let main _ =
    let c = { Port = 8080 }
    c.Port <- 1 // BREAK!
    printfn "%d" c.Port
    0
