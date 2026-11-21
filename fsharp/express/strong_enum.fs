// LEVEL: LANGUAGE

type Color =
    | Red
    | Green
    | Blue

let name c =
    match c with
    | Red -> "red"
    | Green -> "green"
    | Blue -> "blue"

[<EntryPoint>]
let main _ =
    let c = Green
    printfn "%s" (name 7) // REJECT!
    printfn "%s" (name c)
    0
