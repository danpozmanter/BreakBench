open System.Threading.Tasks

let gate = obj ()
let mutable debits = 0
let mutable credits = 0

let post () =
    lock gate (fun () ->
        debits <- debits + 50
        if debits > 0 then invalidOp "crash mid-update" // CONTROL! if debits > 0 then (debits <- debits - 50; invalidOp "crash mid-update")
        credits <- credits + 50)

[<EntryPoint>]
let main _ =
    try
        Task.Run(System.Action post).Wait()
    with :? System.AggregateException as e ->
        eprintfn "worker failed: %s" e.InnerException.Message
    lock gate (fun () -> printfn "%s" (if debits = credits then "balanced" else "unbalanced"))
    0
