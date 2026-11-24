[<EntryPoint>]
let main argv =
    let n = int argv.[0] // CONTROL! let ok, n = System.Int32.TryParse(argv.[0])
    printfn "%d" (n + 1) // CONTROL! if ok then printfn "%d" (n + 1) else printfn "invalid"
    0
