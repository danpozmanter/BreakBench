[<EntryPoint>]
let main argv =
    let x = float argv.[0]
    let v = int64 x
    printfn "%d" v
    0
