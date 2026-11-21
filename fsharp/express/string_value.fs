// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let a = "abc"
    let mutable b = a
    b <- b + "d"
    printfn "%s" a
    0
