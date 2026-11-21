// LEVEL: STD

open System.Security.Cryptography

[<EntryPoint>]
let main _ =
    printfn "%s" (System.Convert.ToHexStringLower(RandomNumberGenerator.GetBytes 16))
    0
