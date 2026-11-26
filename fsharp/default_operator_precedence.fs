let cachedCount name = if name = "ada" then Some 4 else None

[<EntryPoint>]
let main argv =
    let cached = cachedCount argv.[0]
    let count = defaultArg cached 0 + 1
    printfn "%d" count
    0
