open System
open System.IO

[<EntryPoint>]
let main _ =
    Directory.CreateDirectory "/tmp/bb_files" |> ignore
    File.WriteAllText("/tmp/bb_files/report.txt", "secret\n")
    let name = "report.txt\000.png"
    if not (name.EndsWith(".png", StringComparison.Ordinal)) then
        printfn "rejected"
    else
        try
            printf "%s" (File.ReadAllText("/tmp/bb_files/" + name))
        with _ ->
            printfn "rejected"
    0
