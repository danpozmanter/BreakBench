open System.Text.RegularExpressions
[<EntryPoint>]
let main argv =
    printfn "%s" (if Regex.IsMatch(argv.[0], "^[a-z]+$") then "accepted" else "rejected") // CONTROL! printfn "%s" (if Regex.IsMatch(argv.[0], @"^[a-z]+\z") then "accepted" else "rejected")
    0
