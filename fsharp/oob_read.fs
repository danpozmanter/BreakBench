type Frame = { Buf: int[]; Secret: int }

[<EntryPoint>]
let main argv =
    let f = { Buf = [| 1; 2; 3; 4 |]; Secret = 42 }
    printfn "%d" f.Buf.[int argv.[0]] // CONTROL! let i = int argv.[0]
    // CONTROL! if i >= 0 && i < f.Buf.Length then printfn "%d" f.Buf.[i] else printfn "out of range"
    0
