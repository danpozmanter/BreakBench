[<EntryPoint>]
let main _ =
    let mutable i = 0
    i <- i + 1
    i <- i++ // BREAK!
    printfn "%d" i
    0
