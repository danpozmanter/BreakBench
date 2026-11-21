// LEVEL: STD

let find id = if id = 1 then Some 36 else None

[<EntryPoint>]
let main _ =
    printfn "before"
    printfn "%d" (Option.get (find 2) + 1)
    0
