// LEVEL: LANGUAGE

[<Struct>]
type P =
    val mutable X: int
    new(x) = { X = x }

[<EntryPoint>]
let main _ =
    let a = P(1)
    let mutable b = a
    b.X <- 9
    printfn "%d" a.X
    0
