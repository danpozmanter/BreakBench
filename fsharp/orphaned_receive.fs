open System.Threading.Channels
open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    let answer = Channel.CreateUnbounded<int64>()
    Task.Run(fun () -> answer.Writer.TryWrite(int64 "x") |> ignore) |> ignore // CONTROL! Task.Run(fun () -> match System.Int64.TryParse "x" with | true, n -> answer.Writer.TryWrite n |> ignore | _ -> answer.Writer.Complete()) |> ignore
    printfn "%d" (answer.Reader.ReadAsync().AsTask().Result) // CONTROL! let ok, v = if answer.Reader.WaitToReadAsync().AsTask().Result then answer.Reader.TryRead() else (false, 0L)
    // CONTROL! if ok then printfn "%d" v else printfn "failed"
    0
