// LEVEL: STD

open System.Security.Cryptography

[<EntryPoint>]
let main _ =
    printfn "%s" (System.Convert.ToHexStringLower(SHA256.HashData(System.Text.Encoding.UTF8.GetBytes "abc")))
    0
