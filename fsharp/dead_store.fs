[<EntryPoint>]
let main argv =
    let price = int64 argv.[0]
    let total = price + 2L
    printfn "%d" price // CONTROL! printfn "%d" total
    0
