open System.IO

[<EntryPoint>]
let main _ =
    let w = new StreamWriter("/tmp/bb_close.txt")
    w.Write "a"
    w.Close()
    w.Write "b" // BREAK!
    printfn "ok"
    0
