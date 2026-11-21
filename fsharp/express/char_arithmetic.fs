// LEVEL: LANGUAGE

[<EntryPoint>]
let main _ =
    let c = 'a'
    let n = int c + 1
    printfn "%d" n
    let m: int = c + 1 // REJECT!
    0
