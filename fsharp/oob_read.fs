type Frame = { Buf: int[]; Secret: int }

[<EntryPoint>]
let main argv =
    let f = { Buf = [| 1; 2; 3; 4 |]; Secret = 42 }
    printfn "%d" f.Buf.[int argv.[0]]
    0
