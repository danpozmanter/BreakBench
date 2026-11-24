open System.Threading

let transfer (first: obj) (second: obj) (ready: Barrier) =
    lock first (fun () ->
        ready.SignalAndWait() |> ignore // BREAK!
        lock second (fun () -> ()))

[<EntryPoint>]
let main argv =
    let a = obj ()
    let b = obj ()
    let ready = Barrier(2)
    let t1 = Thread(fun () -> transfer a b ready)
    let t2 = Thread(fun () -> transfer b a ready) // CONTROL! let t2 = Thread(fun () -> transfer a b ready)
    t1.Start()
    t2.Start()
    t1.Join()
    t2.Join()
    printfn "finished"
    0
