// LEVEL: STD

[<EntryPoint>]
let main _ =
    let counts = [ "a"; "b"; "a" ] |> List.countBy id |> Map.ofList
    printfn "a=%d b=%d" counts.["a"] counts.["b"]
    0
