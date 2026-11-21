// LEVEL: STD

open System.Collections.Concurrent
open System.Threading

[<EntryPoint>]
let main _ =
    let m = ConcurrentDictionary<int, int>()
    let ts = [ for t in 0 .. 3 -> Thread(fun () -> for k in 0 .. 999 do m.[t * 1000 + k] <- k) ]
    ts |> List.iter (fun t -> t.Start())
    ts |> List.iter (fun t -> t.Join())
    printfn "%d" m.Count
    0
