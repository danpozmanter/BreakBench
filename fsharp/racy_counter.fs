open System.Threading

[<EntryPoint>]
let main argv =
    // A closure cannot capture a mutable local; the F# documentation sends that case to a ref cell.
    let counter = ref 0L
    let threads =
        [ for _ in 1..8 ->
              Thread(fun () ->
                  for _ in 1..1_000_000 do
                      counter.Value <- counter.Value + 1L) ]
    threads |> List.iter (fun t -> t.Start())
    threads |> List.iter (fun t -> t.Join())
    printfn "%d" counter.Value
    0
