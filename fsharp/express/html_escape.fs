// LEVEL: STD

open System.Net

[<EntryPoint>]
let main _ =
    printfn "%s" (WebUtility.HtmlEncode "<a href=\"x\">Tom & Jerry</a>")
    0
