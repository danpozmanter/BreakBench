[<EntryPoint>]
let main argv =
    let xs = ResizeArray [ 1; 2; 2; 3 ]
    for x in xs do
        if x = 2 then xs.Remove x |> ignore
    printfn "%s" (System.String.Join(",", xs))
    0
