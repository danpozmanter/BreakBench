let add (a: int64) (b: int64) = a + b

[<EntryPoint>]
let main argv =
    let raw = argv.[0]
    printfn "%d" (add raw 3L) // BREAK!
    printfn "%s %d" raw (add 1L 2L)
    0
