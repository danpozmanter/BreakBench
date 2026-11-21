// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let mutable i = 0
    i <- i + 1
    i <- i++ // REJECT!
    printfn "%d" i
    0
