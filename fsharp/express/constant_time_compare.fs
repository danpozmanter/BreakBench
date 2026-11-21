// LEVEL: STD

open System.Security.Cryptography

[<EntryPoint>]
let main _ =
    let a = Array.create 16 7uy
    let b = Array.create 16 7uy
    printfn "%s" (if CryptographicOperations.FixedTimeEquals(System.ReadOnlySpan a, System.ReadOnlySpan b) then "equal" else "different")
    0
