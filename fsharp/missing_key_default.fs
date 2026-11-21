[<EntryPoint>]
let main argv =
    let stock = dict [ "apple", 3; "plum", 4 ]
    let name = argv.[0]
    printfn "%d" (stock.[name] + 5)
    0
