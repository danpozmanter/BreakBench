// LEVEL: STD

open System.Text.RegularExpressions

[<EntryPoint>]
let main _ =
    let re = Regex "^[a-z]+[0-9]{2}$"
    printfn "%b %b" (re.IsMatch "abc12") (re.IsMatch "abc1")
    0
