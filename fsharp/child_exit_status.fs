open System.Diagnostics

[<EntryPoint>]
let main _ =
    (Process.Start("sh", [ "-c"; "exit 3" ])).WaitForExit() // CONTROL! let p = Process.Start("sh", [ "-c"; "exit 3" ])
    // CONTROL! p.WaitForExit()
    printfn "backed up" // CONTROL! if p.ExitCode <> 0 then printfn "backup failed" else printfn "backed up"
    0
