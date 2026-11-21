// LEVEL: LANGUAGE

let show (f: float) = printfn "%g" f

[<EntryPoint>]
let main _ =
    let n = 7L
    show (float n)
    show n // REJECT!
    0
