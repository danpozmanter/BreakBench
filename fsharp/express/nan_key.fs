// LEVEL: STD

open System.Collections.Generic

[<EntryPoint>]
let main _ =
    let a = float "NaN"
    let b = float "NaN"
    let s = HashSet<float>([ a ])
    printfn "%s" (if s.Contains b then "found" else "missing")
    0
