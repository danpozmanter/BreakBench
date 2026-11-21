type Frame = { Buf: int[]; mutable Guard: int }

[<EntryPoint>]
let main argv =
    let f = { Buf = Array.zeroCreate 4; Guard = 7 }
    f.Buf.[int argv.[0]] <- 99
    printfn "%d" f.Guard
    0
