// LEVEL: STD

[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    try
        let buf = Array.zeroCreate<byte> (Checked.int n)
        printfn "allocated %d" buf.Length
    with
    | :? System.OutOfMemoryException
    | :? System.OverflowException -> printfn "allocation failed"
    0
