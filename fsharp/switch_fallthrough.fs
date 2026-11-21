[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    let name =
        match n with
        | 1 -> "one"
        | 2 -> "two"
        | _ -> "other"
    printfn "%s" name
    0
