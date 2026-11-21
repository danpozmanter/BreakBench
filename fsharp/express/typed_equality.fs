// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let id = 42
    if id = 42 then printfn "match"
    if id = "42" then printfn "text" // REJECT!
    0
