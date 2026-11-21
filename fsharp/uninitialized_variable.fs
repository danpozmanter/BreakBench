[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    let mutable x : int // BREAK!
    // CONTROL! let mutable x : int = 0
    if n > 5 then x <- 10
    printfn "%d" x
    0
