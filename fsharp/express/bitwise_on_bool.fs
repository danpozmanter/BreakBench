// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let s = "abc"
    if s.Length > 0 && s.[0] = 'a' then printfn "yes"
    if (s.Length > 0) &&& (s.[0] = 'a') then printfn "both" // REJECT!
    0
