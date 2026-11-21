// LEVEL: STD

[<EntryPoint>]
let main _ =
    printfn "%s" (Set.ofList [ 3; 1; 2 ] |> Seq.map string |> String.concat " ")
    0
