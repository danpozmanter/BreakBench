// LEVEL: STD

[<EntryPoint>]
let main _ =
    printfn "%s" (if "é".Normalize(System.Text.NormalizationForm.FormC) = "é" then "equal" else "different")
    0
