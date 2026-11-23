open System.Diagnostics

[<EntryPoint>]
let main _ =
    (Process.Start("sh", [ "-c"; "exit 3" ])).WaitForExit()
    printfn "backed up"
    0
