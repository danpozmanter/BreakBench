// LEVEL: LANGUAGE

[<EntryPoint>]
let main argv =
    printfn "%d" (Operators.(+) (int64 argv.[0]) 1L)
    0
