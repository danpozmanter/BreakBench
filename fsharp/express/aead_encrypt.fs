// LEVEL: STD

open System.Security.Cryptography
open System.Text

[<EntryPoint>]
let main _ =
    let key = RandomNumberGenerator.GetBytes 32
    let nonce = RandomNumberGenerator.GetBytes 12
    use aes = new AesGcm(key, 16)
    let plain = Encoding.UTF8.GetBytes "secret"
    let sealedBytes = Array.zeroCreate<byte> plain.Length
    let tag = Array.zeroCreate<byte> 16
    aes.Encrypt(nonce, plain, sealedBytes, tag)
    let opened = Array.zeroCreate<byte> plain.Length
    aes.Decrypt(nonce, sealedBytes, tag, opened)
    printfn "%s" (Encoding.UTF8.GetString opened)
    sealedBytes.[0] <- sealedBytes.[0] ^^^ 1uy
    try
        aes.Decrypt(nonce, sealedBytes, tag, opened)
        printfn "accepted"
    with :? AuthenticationTagMismatchException ->
        printfn "rejected"
    0
