// LEVEL: STD

[<EntryPoint>]
let main _ =
    let xs = [| 3.0; nan; 1.0; 2.0 |]
    System.Array.Sort xs
    printfn "%s" (xs |> Array.map (fun x -> if System.Double.IsNaN x then "NaN" else string (int x)) |> String.concat " ")
    0
