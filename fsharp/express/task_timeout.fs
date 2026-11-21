// LEVEL: STD

open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    let work = Task.Delay 5000
    printfn "%s" (if work.Wait 100 then "done" else "timed out")
    0
