// LEVEL: STD

open System.Collections.Concurrent
open System.Threading

[<EntryPoint>]
let main _ =
    let queue = new BlockingCollection<int>()
    let t = Thread(fun () -> (for v in 1 .. 3 do queue.Add v); queue.CompleteAdding())
    t.Start()
    let got = queue.GetConsumingEnumerable() |> Seq.map string |> List.ofSeq
    t.Join()
    printfn "%s" (String.concat " " got)
    0
