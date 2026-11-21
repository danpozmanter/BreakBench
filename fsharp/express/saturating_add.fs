// LEVEL: STD

open System

[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    printfn "%d" (Int64.CreateSaturating(Int128.op_Implicit n + Int128.One))
    0
