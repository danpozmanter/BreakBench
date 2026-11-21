// LEVEL: STD

open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    let work = Task.Run(fun () -> (failwith "bad input" : int))
    try
        printfn "%d" work.Result
    with :? System.AggregateException as e ->
        printfn "worker failed: %s" e.InnerException.Message
    0
