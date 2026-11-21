type Shape =
    | Circle
    | Square

let describe s =
    match s with
    | _ -> "other"
    | Circle -> "circle"

[<EntryPoint>]
let main _ =
    printfn "%s" (describe Circle)
    0
