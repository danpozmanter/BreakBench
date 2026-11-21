// LEVEL: STD

[<EntryPoint>]
let main _ =
    try
        Checked.int64 nan |> ignore
        printfn "fits"
    with :? System.OverflowException -> printfn "does not fit"
    0
