open System.IO

[<EntryPoint>]
let main _ =
    do // CONTROL! try
        use w = new StreamWriter("/dev/full")
        w.WriteLine("data")
        // CONTROL! w.Flush()
        // CONTROL! printfn "saved"
    // CONTROL! with :? IOException -> printfn "failed"
    printfn "saved" // BREAK!
    0
