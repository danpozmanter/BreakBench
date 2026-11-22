open System.IO

[<EntryPoint>]
let main _ =
    do
        use w = new StreamWriter("/dev/full")
        w.WriteLine("data")
    printfn "saved"
    0
