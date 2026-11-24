[<EntryPoint>]
let main _ =
    printfn "%d" (Map [ "a", 1; "a", 2 ] |> Map.count) // CONTROL! printfn "%d" (Map [ "a", 1; "b", 2 ] |> Map.count)
    0
