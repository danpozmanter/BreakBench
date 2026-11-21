[<EntryPoint>]
let main _ =
    let big = 42L
    let small = int32 big
    let wrong: int32 = big // BREAK!
    printfn "%d" small
    0
