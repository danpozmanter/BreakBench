// LEVEL: STD

open System.Collections.Generic

[<EntryPoint>]
let main _ =
    let d = LinkedList<int>()
    d.AddLast 1 |> ignore
    d.AddFirst 0 |> ignore
    d.AddLast 2 |> ignore
    let front = d.First.Value
    d.RemoveFirst()
    let back = d.Last.Value
    d.RemoveLast()
    printfn "%d %d" front back
    0
