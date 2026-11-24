type Shape =
    | Circle
    | Square

let describe s =
    match s with
    | _ -> "other" // CONTROL! | Circle -> "circle"
    | Circle -> "circle" // CONTROL! | _ -> "other"

[<EntryPoint>]
let main _ =
    printfn "%s" (describe Circle)
    0
