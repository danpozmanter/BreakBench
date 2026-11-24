open System.Threading

[<EntryPoint>]
let main _ =
    let woken = obj ()
    // CONTROL! let ready = ref false
    lock woken (fun () -> Monitor.Pulse woken) // CONTROL! lock woken (fun () -> ready.Value <- true; Monitor.Pulse woken)
    let worker =
        Thread(fun () ->
            lock woken (fun () -> Monitor.Wait woken |> ignore) // CONTROL! lock woken (fun () -> while not ready.Value do Monitor.Wait woken |> ignore)
            printfn "done")
    worker.Start()
    worker.Join()
    0
