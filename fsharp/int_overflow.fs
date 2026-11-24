[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    printfn "%d" (n + 1L) // CONTROL! printfn "%d" (uint64 n + 1UL)
    0
