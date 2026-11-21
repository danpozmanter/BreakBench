// LEVEL: STD

open System.Diagnostics

[<EntryPoint>]
let main _ =
    use p = Process.Start("sleep", "10")
    if not (p.WaitForExit 100) then
        p.Kill()
        p.WaitForExit()
        printfn "killed"
    else
        printfn "finished"
    0
