// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let xs = [ 1; 2; 3 ]
    xs.[0] <- 9 // REJECT!
    printfn "%d" xs.Length
    0
