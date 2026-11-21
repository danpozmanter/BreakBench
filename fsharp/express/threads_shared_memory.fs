// LEVEL: STD

open System.Threading

[<EntryPoint>]
let main _ =
    let slots = Array.zeroCreate<int> 10
    let a = Thread(fun () -> for i in 0 .. 4 do slots.[i] <- i)
    let b = Thread(fun () -> for i in 5 .. 9 do slots.[i] <- i)
    a.Start()
    b.Start()
    a.Join()
    b.Join()
    printfn "%d" (Array.sum slots)
    0
