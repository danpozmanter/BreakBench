// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let x = 1
    x <- 2 // REJECT!
    printfn "%d" x
    0
