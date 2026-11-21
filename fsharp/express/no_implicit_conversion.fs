// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let big = 42L
    let small = int32 big
    let wrong: int32 = big // REJECT!
    printfn "%d" small
    0
