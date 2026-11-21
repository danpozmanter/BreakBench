[<NoComparison>]
type Point = { X: int; Y: int }

[<EntryPoint>]
let main _ =
    let xs = List.sort [ 3; 1; 2 ]
    printfn "%A" (List.sort [ { X = 1; Y = 2 } ]) // BREAK!
    printfn "%d" (List.head xs)
    0
