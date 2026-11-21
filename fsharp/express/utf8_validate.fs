// LEVEL: STD

open System.Text

[<EntryPoint>]
let main _ =
    try
        UTF8Encoding(false, true).GetString([| 0x61uy; 0xFFuy |]) |> ignore
        printfn "valid"
    with :? DecoderFallbackException -> printfn "invalid"
    0
