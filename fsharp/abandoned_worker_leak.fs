open System.Threading.Tasks
[<EntryPoint>]
let main argv =
    let rounds = int argv.[0]
    for i in 0 .. rounds - 1 do
        let a = Task.Run(fun () -> Array.create 8192 (int64 i))
        let b = Task.Run(fun () -> Array.create 8192 (int64 i + 1L))
        let first = Task.WhenAny(a, b).Result.Result
        if first.Length <> 8192 then printfn "short"
    printfn "done"
    0
