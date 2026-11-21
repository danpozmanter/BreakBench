[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    printfn "%d" (n + 1L)
    0
