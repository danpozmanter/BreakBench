open System.Threading.Channels
open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    let answer = Channel.CreateUnbounded<int64>()
    Task.Run(fun () -> answer.Writer.TryWrite(int64 "x") |> ignore) |> ignore
    printfn "%d" (answer.Reader.ReadAsync().AsTask().Result)
    0
