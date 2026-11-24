[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    let buf = Array.zeroCreate<byte> (int n) // CONTROL! let buf = if n > (1L <<< 30) then [||] else Array.zeroCreate<byte> (int n)
    buf.[buf.Length - 1] <- 1uy // CONTROL! if buf.Length = 0 then printfn "too large" else buf.[buf.Length - 1] <- 1uy
    printfn "%d" buf.Length // CONTROL! if buf.Length > 0 then printfn "%d" buf.Length
    0
