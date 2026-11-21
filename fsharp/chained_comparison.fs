[<EntryPoint>]
let main argv =
    let x = int argv.[0]
    let inside = 1 < x < 3 // BREAK!
    // CONTROL! let inside = 1 < x && x < 3
    printfn "%s" (if inside then "inside" else "outside")
    0
