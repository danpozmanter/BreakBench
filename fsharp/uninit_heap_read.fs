[<EntryPoint>]
let main argv =
    let mutable session = Array.zeroCreate<byte> 64
    System.Text.Encoding.ASCII.GetBytes("SECRET-TOKEN").CopyTo(session, 32)
    session <- null
    let reply = Array.zeroCreate<byte> 64
    printfn "%s" (System.Convert.ToHexString(reply, 32, 12).ToLowerInvariant())
    0
