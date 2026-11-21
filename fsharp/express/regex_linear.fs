// LEVEL: STD

open System.Text.RegularExpressions

[<EntryPoint>]
let main _ =
    let re = Regex("^(a+)+$", RegexOptions.NonBacktracking)
    printfn "%s" (if re.IsMatch "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!" then "match" else "no match")
    0
