open System.Threading

[<EntryPoint>]
let main _ =
    let woken = obj ()
    lock woken (fun () -> Monitor.Pulse woken)
    let worker =
        Thread(fun () ->
            lock woken (fun () -> Monitor.Wait woken |> ignore)
            printfn "done")
    worker.Start()
    worker.Join()
    0
