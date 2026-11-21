// LEVEL: LANGUAGE

type Rec = { Id: int; Data: byte[] }

[<EntryPoint>]
let main _ =
    let mutable last = { Id = 0; Data = [||] }
    for i in 0 .. 3_999_999 do
        last <- { Id = i; Data = Array.zeroCreate 1016 }
    printfn "%d" last.Id
    0
