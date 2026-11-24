[<EntryPoint>]
let main argv =
    let count = int64 argv[0]
    let size = count * 8L // CONTROL! let size = if count > (1L <<< 27) then 0L else count * 8L
    let records = Array.zeroCreate<byte> (int size) // CONTROL! if size = 0L then printfn "too large" else (let records = Array.zeroCreate<byte> (int size) in records[8] <- 99uy; printfn "stored")
    records[8] <- 99uy // BREAK!
    printfn "stored" // BREAK!
    0
