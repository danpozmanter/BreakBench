open System.Threading.Tasks
[<EntryPoint>]
let main argv =
    let worker = Task.Run(fun () -> argv |> Array.sumBy int64)
    let total = worker.Result
    printfn "total %d" total
    0
