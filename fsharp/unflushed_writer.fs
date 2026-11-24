open System.IO

[<EntryPoint>]
let main _ =
    let report = new StreamWriter("/tmp/bb_report.txt")
    report.WriteLine "total=42"
    // CONTROL! report.Close()
    0
