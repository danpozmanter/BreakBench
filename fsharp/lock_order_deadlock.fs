open System.Threading

let transfer (first: obj) (second: obj) =
    lock first (fun () ->
        Thread.Sleep 100
        lock second (fun () -> ()))

[<EntryPoint>]
let main argv =
    let a = obj ()
    let b = obj ()
    let t1 = Thread(fun () -> transfer a b)
    let t2 = Thread(fun () -> transfer b a)
    t1.Start()
    t2.Start()
    t1.Join()
    t2.Join()
    printfn "finished"
    0
