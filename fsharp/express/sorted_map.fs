// LEVEL: STD

[<EntryPoint>]
let main _ =
    let m = Map.ofList [ "c", 1; "a", 2; "b", 3 ]
    printfn "%s" (m |> Map.keys |> String.concat " ")
    0
