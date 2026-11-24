open System.Threading.Tasks
[<EntryPoint>]
let main argv =
    let worker = Task.Run(fun () -> argv |> Array.sumBy int64)
    let total = worker.Result // CONTROL! let total = try Some worker.Result with _ -> None
    printfn "total %d" total // CONTROL! match total with Some t -> printfn "total %d" t | None -> printfn "failed"
    0
