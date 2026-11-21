// LEVEL: STD

open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    let worker = Task.Run(fun () -> failwith "boom")
    try worker.Wait() with _ -> printfn "worker crashed"
    0
