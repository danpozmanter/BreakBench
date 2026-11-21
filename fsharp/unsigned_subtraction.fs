[<Literal>]
let Header = 5

[<EntryPoint>]
let main argv =
    let message = argv.[0]
    let payload = message.Length - Header
    if payload < 0 then printfn "short" else printfn "%d" payload
    0
