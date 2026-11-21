// LEVEL: STD

open System.Globalization

[<EntryPoint>]
let main _ =
    let s = "abcdefgh👍🏽xyz"
    let info = StringInfo s
    printfn "%s" (info.SubstringByTextElements(0, 9))
    0
