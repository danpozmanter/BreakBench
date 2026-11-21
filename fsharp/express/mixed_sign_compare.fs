// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let i = -1
    let n = 3u
    let wrong = i < n // REJECT!
    printfn "%s" (if i < int n then "less" else "not less")
    0
