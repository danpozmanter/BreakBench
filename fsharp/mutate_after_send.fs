open System.Collections.Concurrent
open System.Threading

[<EntryPoint>]
let main _ =
    let lists = new BlockingCollection<int list>()
    use goOn = new ManualResetEventSlim()
    let worker =
        Thread(fun () ->
            let received = lists.Take()
            goOn.Wait()
            printfn "%d" (List.head received))
    worker.Start()
    let list = [ 1; 2; 3 ]
    lists.Add list
    let changed = 99 :: List.tail list
    goOn.Set()
    worker.Join()
    ignore changed
    0
