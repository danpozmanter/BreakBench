let total a b =
    a + b

[<EntryPoint>]
let main argv =
    printfn "%d" (total 2L 3L)
    0
