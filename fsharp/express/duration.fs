// LEVEL: STD

open System

[<EntryPoint>]
let main _ =
    let total = TimeSpan.FromSeconds 1.5 + TimeSpan.FromMilliseconds 500.0
    let wrong = total + 5 // REJECT!
    printfn "%g" total.TotalMilliseconds
    0
