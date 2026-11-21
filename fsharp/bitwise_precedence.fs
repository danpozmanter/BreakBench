[<EntryPoint>]
let main argv =
    let x = int argv.[0]
    let even = x &&& 1 = 0 // BREAK!
    // CONTROL! let even = (x &&& 1) = 0
    printfn "%s" (if even then "even" else "odd")
    0
