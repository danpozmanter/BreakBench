open System.Text

[<EntryPoint>]
let main argv =
    let claimed = int argv.[0]
    let buf = Array.zeroCreate<byte> 64
    Encoding.ASCII.GetBytes("SECRET-KEY-0042").CopyTo(buf, 2)
    Encoding.ASCII.GetBytes("hi").CopyTo(buf, 0)
    let payload = buf.[0..1]
    let reply = payload.[0..claimed - 1] // CONTROL! let reply = if claimed > payload.Length then Encoding.ASCII.GetBytes "invalid" else payload.[0..claimed - 1]
    printfn "%s" (Encoding.ASCII.GetString reply)
    0
