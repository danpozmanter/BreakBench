// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let name = "Ada"
    printfn $"hello {name}"
    printfn $"hello {nmae}" // REJECT!
    0
