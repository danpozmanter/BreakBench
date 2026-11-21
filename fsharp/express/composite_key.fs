// LEVEL: STD

[<EntryPoint>]
let main _ =
    let s = set [ (1, 2) ]
    printfn "%b" (s.Contains(1, 2))
    0
