// LEVEL: STD

[<EntryPoint>]
let main argv =
    let v = int argv.[0]
    try
        Checked.byte v |> ignore
        printfn "fits"
    with :? System.OverflowException -> printfn "does not fit"
    0
