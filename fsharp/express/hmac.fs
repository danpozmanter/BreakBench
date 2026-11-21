// LEVEL: STD

open System
open System.Security.Cryptography
open System.Text

[<EntryPoint>]
let main _ =
    let tag = HMACSHA256.HashData(Encoding.UTF8.GetBytes "key", Encoding.UTF8.GetBytes "The quick brown fox jumps over the lazy dog")
    printfn "%s" (Convert.ToHexStringLower tag)
    0
