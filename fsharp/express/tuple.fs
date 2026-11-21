// LEVEL: LANGUAGE

let pair () = 1, "a"

[<EntryPoint>]
let main _ =
    let n, s = pair ()
    printfn "%d %s" n s
    0
