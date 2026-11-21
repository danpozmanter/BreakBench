[<EntryPoint>]
let main _ =
    let scores = [ 10; 9; 1 ]
    printfn "%s" (scores |> List.sort |> List.map string |> String.concat " ")
    0
