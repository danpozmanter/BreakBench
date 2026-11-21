// LEVEL: LANGUAGE

let check n =
    if n > 100 then printfn "big"
    else printfn "ok"

let checkTwice n = // REJECT!
    return () // REJECT!
    printfn "checked" // REJECT!

[<EntryPoint>]
let main _ =
    check 1
    0
