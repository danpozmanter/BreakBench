let parseOrder (line: string) =
    let parts = line.Split ','
    int parts[2] // BREAK!
    // CONTROL! int parts[1]

[<EntryPoint>]
let main _ =
    try
        printfn "%d" (parseOrder "widget,5")
    with _ ->
        printfn "invalid order"
    0
