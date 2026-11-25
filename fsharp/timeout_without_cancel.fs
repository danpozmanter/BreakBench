open System.Threading

let mutable balance = 100
let gate = new ManualResetEventSlim(false)

let charge () =
    async {
        do! Async.AwaitWaitHandle gate.WaitHandle |> Async.Ignore
        Interlocked.Add(&balance, -30) |> ignore
    }

[<EntryPoint>]
let main _ =
    let attempt = Async.StartAsTask(charge ())
    if not (attempt.Wait 100) then
        gate.Set()
        charge () |> Async.RunSynchronously // BREAK!
    attempt.Wait()
    printfn "%d" balance
    0
