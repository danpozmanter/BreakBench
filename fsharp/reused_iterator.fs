[<EntryPoint>]
let main argv =
    let xs = [ 1; 2; 3; 4; 5; 6 ]
    let evens = xs |> Seq.filter (fun x -> x % 2 = 0)
    let total = Seq.sum evens
    let count = Seq.length evens
    printfn "%d %d" total count
    0
