// LEVEL: LANGUAGE

[<EntryPoint>]
let main args =
    let ready = args.Length < 5
    let x = if ready then 5 else 5
    let y: int // REJECT!
    printfn "%d" x
    0
