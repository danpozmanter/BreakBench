open System.Text.RegularExpressions
[<EntryPoint>]
let main argv =
    printfn "%s" (if Regex.IsMatch(argv.[0], "^(a+)+$") then "match" else "no match") // CONTROL! printfn "%s" (if Regex.IsMatch(argv.[0], "^a+$") then "match" else "no match")
    0
