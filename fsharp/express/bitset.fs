// LEVEL: STD

open System.Collections

[<EntryPoint>]
let main _ =
    let b = BitArray 1024
    b.[1000] <- true
    printfn "%b %b" b.[1000] b.[999]
    0
