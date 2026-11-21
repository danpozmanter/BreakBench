open System.Collections.Generic
open System.Threading

[<EntryPoint>]
let main argv =
    let map = Dictionary<int64, int64>()
    let threads =
        [ for t in 0L .. 7L ->
              Thread(fun () ->
                  for k in 0L .. 99_999L do
                      map.[t * 100_000L + k] <- k) ]
    threads |> List.iter (fun t -> t.Start())
    threads |> List.iter (fun t -> t.Join())
    printfn "%d" map.Count
    0
