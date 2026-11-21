[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    let buf = Array.zeroCreate<byte> (int n)
    buf.[buf.Length - 1] <- 1uy
    printfn "%d" buf.Length
    0
