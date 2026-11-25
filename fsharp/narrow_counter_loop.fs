[<EntryPoint>]
let main _ =
    let mutable passes = 0
    let mutable i = 0uy // BREAK!
    // CONTROL! let mutable i = 0us
    while i < 300uy do // BREAK!
    // CONTROL! while i < 300us do
        passes <- passes + 1
        i <- i + 1uy // BREAK!
        // CONTROL! i <- i + 1us
    printfn "%d" passes
    0
