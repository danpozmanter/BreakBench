// F#'s default list is immutable: removing items builds a new list.
[<EntryPoint>]
let main argv =
    let xs = [ 1; 2; 2; 3 ]
    let xs = xs |> List.filter (fun x -> x <> 2)
    printfn "%s" (System.String.Join(",", xs))
    0
