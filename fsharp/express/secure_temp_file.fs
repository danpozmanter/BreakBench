// LEVEL: STD

open System.IO

[<EntryPoint>]
let main _ =
    let path = Path.GetTempFileName()
    File.WriteAllText(path, "ok")
    printfn "%s" (File.ReadAllText path)
    File.Delete path
    0
