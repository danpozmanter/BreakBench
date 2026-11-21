// LEVEL: LANGUAGE

[<Measure>] type m
[<Measure>] type s

[<EntryPoint>]
let main _ =
    let total = 2.0<m> + 3.0<m>
    let wrong = 2.0<m> + 3.0<s> // REJECT!
    printfn "%g" (float total)
    0
