open System.IO

[<EntryPoint>]
let main _ =
    File.WriteAllText("/tmp/bb_report.txt", "total=42\n")
    0
