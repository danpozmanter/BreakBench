// LEVEL: STD

open System.Threading
open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    use cts = new CancellationTokenSource()
    let work = Task.Run(fun () -> while not cts.Token.IsCancellationRequested do Thread.Sleep 1)
    Thread.Sleep 20
    cts.Cancel()
    work.Wait()
    printfn "stopped"
    0
