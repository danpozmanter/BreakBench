[<EntryPoint>]
let main argv =
    let a = int64 argv.[0]
    let b = int64 argv.[1]
    printfn "%d" (a / b) // CONTROL! printfn "%O" (bigint a / bigint b)
    0
