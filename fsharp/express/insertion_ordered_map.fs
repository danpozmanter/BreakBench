// LEVEL: STD

open System.Collections.Generic

[<EntryPoint>]
let main _ =
    let m = OrderedDictionary<string, int>()
    m.Add("c", 1)
    m.Add("a", 2)
    m.Add("b", 3)
    printfn "%s" (String.concat " " m.Keys)
    0
