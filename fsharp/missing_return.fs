let grade score : string =
    if score > 50 then "pass"
    elif score < 50 then "fail"
    // CONTROL! else "borderline"

[<EntryPoint>]
let main argv =
    printfn "%s" (grade (int argv.[0]))
    0
