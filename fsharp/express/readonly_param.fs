// LEVEL: LANGUAGE

let count (xs: int list) =
    xs.[0] <- 9 // REJECT!
    List.length xs

[<EntryPoint>]
let main _ =
    printfn "%d" (count [ 1; 2; 3 ])
    0
