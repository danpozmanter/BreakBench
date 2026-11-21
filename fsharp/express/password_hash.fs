// LEVEL: STD

open System.Security.Cryptography

[<EntryPoint>]
let main _ =
    let salt = RandomNumberGenerator.GetBytes 16
    let derive (password: string) =
        Rfc2898DeriveBytes.Pbkdf2(password, salt, 600000, HashAlgorithmName.SHA256, 32)
    let stored = derive "hunter2"
    let check p = CryptographicOperations.FixedTimeEquals(System.ReadOnlySpan stored, System.ReadOnlySpan(derive p))
    printfn "%b %b" (check "hunter2") (check "wrong")
    0
