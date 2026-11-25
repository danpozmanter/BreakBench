[<EntryPoint>]
let main argv =
    let n = int64 argv.[0] // CONTROL! let ok, n = System.Int64.TryParse(argv.[0])
    printfn "%d" n // CONTROL! if ok then printfn "%d" n else printfn "invalid"
    0
