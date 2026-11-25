open System.Threading.Channels
open System.Threading.Tasks

let firstAnswer () =
    let answers = Channel.CreateUnbounded<int>()
    let workers = Array.init 2 (fun _ -> Task.Run(fun () -> answers.Writer.WriteAsync(42).AsTask()))
    answers.Reader.ReadAsync().AsTask().Result, workers

[<EntryPoint>]
let main _ =
    let answer, workers = firstAnswer ()
    printfn "%d" answer
    Task.WaitAll(workers)
    printfn "done"
    0
