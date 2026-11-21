type Rec = { mutable Value: int64 }

[<EntryPoint>]
let main argv =
    let mutable a = Some { Value = 1234L }
    let b = a.Value
    a <- None
    let c = { Value = 6666L }
    printfn "%d" b.Value
    0
