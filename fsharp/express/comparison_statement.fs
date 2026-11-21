// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let mutable count = 0
    count <- 5
    count = 5 // REJECT!
    printfn "%d" count
    0
