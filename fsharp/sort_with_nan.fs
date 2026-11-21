[<EntryPoint>]
let main argv =
    let xs = [ 5.0; nan; 3.0; 1.0; nan; 4.0; 2.0 ]
    let sorted = List.sort xs
    let finite = sorted |> List.filter (fun x -> not (System.Double.IsNaN x))
    let ordered = finite |> List.pairwise |> List.forall (fun (a, b) -> a <= b)
    printfn "%s" (if ordered then "ordered" else "unordered")
    0
