type Color =
    | Red
    | Green
    | Blue

let name c =
    match c with
    | Red -> "red"
    | Green -> "green"
    // CONTROL! | Blue -> "blue"

[<EntryPoint>]
let main argv =
    let colors = [| Red; Green; Blue |]
    printfn "%s" (name colors.[int argv.[0]])
    0
