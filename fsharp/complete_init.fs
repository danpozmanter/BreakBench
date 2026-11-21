type Config = { Timeout: int; Retries: int }

[<EntryPoint>]
let main _ =
    let c = { Timeout = 5; Retries = 3 }
    let partial = { Timeout = 5 } // BREAK!
    printfn "%d %d" c.Timeout c.Retries
    0
