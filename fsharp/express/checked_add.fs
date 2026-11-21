// LEVEL: STD

open Checked

[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    try
        n + 1L |> ignore
        printfn "ok"
    with :? System.OverflowException -> printfn "overflow"
    0
