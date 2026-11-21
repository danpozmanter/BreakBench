// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    if compare "x" "x" = 0 then printfn "same"
    if compare "x" "x" then printfn "different" // REJECT!
    0
