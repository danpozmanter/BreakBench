[<EntryPoint>]
let main argv =
    let fs = ResizeArray<unit -> int>()
    for i in 0..2 do
        fs.Add(fun () -> i)
    printfn "%s" (System.String.Join(",", fs |> Seq.map (fun f -> f ())))
    0
