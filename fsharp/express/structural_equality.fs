// LEVEL: LANGUAGE

type P = { X: int; Y: int }

[<EntryPoint>]
let main _ =
    let a = { X = 1; Y = 2 }
    let b = { X = 1; Y = 2 }
    printfn "%s" (if a = b then "equal" else "different")
    0
