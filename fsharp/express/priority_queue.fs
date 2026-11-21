// LEVEL: STD

open System.Collections.Generic

[<EntryPoint>]
let main _ =
    let q = PriorityQueue<int, int>()
    for v in [ 3; 1; 2 ] do q.Enqueue(v, v)
    let a = q.Dequeue()
    let b = q.Dequeue()
    let c = q.Dequeue()
    printfn "%d %d %d" a b c
    0
