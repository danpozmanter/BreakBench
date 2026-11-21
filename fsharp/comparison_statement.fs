[<EntryPoint>]
let main _ =
    let mutable count = 0
    count <- 5
    count = 5 // BREAK!
    printfn "%d" count
    0
