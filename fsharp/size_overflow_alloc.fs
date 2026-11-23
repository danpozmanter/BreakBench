[<EntryPoint>]
let main argv =
    let count = int64 argv[0]
    let size = count * 8L
    let records = Array.zeroCreate<byte> (int size)
    records[8] <- 99uy
    printfn "stored"
    0
