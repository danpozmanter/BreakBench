// LEVEL: STD

[<EntryPoint>]
let main argv =
    match System.Int64.TryParse argv.[0] with
    | true, _ -> printfn "valid"
    | _ -> printfn "invalid"
    0
