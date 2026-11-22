// F# has no return statement: a function runs to its last expression, so nothing can cut it short.
let check () =
    printfn "ok"
    printfn "checked"

[<EntryPoint>]
let main _ =
    check ()
    0
