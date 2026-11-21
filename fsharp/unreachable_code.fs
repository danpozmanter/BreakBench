let check n =
    if n > 100 then printfn "big"
    else printfn "ok"

let checkTwice n = // BREAK!
    return () // BREAK!
    printfn "checked" // BREAK!

[<EntryPoint>]
let main _ =
    check 1
    0
