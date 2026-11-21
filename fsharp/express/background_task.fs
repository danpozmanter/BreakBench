// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let task = task { do! System.Threading.Tasks.Task.Delay 50
                      return 7 }
    printfn "started"
    printfn "%d" task.Result
    0
