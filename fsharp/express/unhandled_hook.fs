// LEVEL: STD

[<EntryPoint>]
let main _ =
    System.AppDomain.CurrentDomain.UnhandledException.Add(fun _ -> printfn "hook ran")
    failwith "boom"
