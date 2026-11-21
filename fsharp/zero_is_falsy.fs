[<EntryPoint>]
let main argv =
    let qty =
        match System.Int32.TryParse argv.[0] with
        | true, v -> Some v
        | _ -> None
    let present = if qty then true else false // BREAK!
    // CONTROL! let present = qty.IsSome
    printfn "%s" (if present then sprintf "have %d" qty.Value else "missing")
    0
