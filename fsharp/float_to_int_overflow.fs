[<EntryPoint>]
let main argv =
    let x = float argv.[0]
    let v = int64 x // CONTROL! let v = bigint x
    printfn "%d" v // CONTROL! printfn "%s" (v.ToString())
    0
