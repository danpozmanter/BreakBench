// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let o: int option = None
    let n = o + 1 // REJECT!
    printfn "%s" (if o.IsNone then "none" else "some")
    0
