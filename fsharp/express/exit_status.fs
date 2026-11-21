// LEVEL: STD

open System.Diagnostics

[<EntryPoint>]
let main _ =
    use p = Process.Start "false"
    p.WaitForExit()
    printfn "%d" p.ExitCode
    0
