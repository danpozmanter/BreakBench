// LEVEL: STD

open System.IO

[<EntryPoint>]
let main _ =
    use buf = new MemoryStream()
    for i in 0 .. 99999 do buf.WriteByte(byte (i &&& 0xFF))
    printfn "%d" buf.Length
    0
