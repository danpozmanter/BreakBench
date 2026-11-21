type Rec = { mutable Value: int64 }

[<EntryPoint>]
let main argv =
    let mutable a = Some { Value = 0L }
    a <- None
    a <- None
    let x = { Value = 1L }
    let y = { Value = 2L }
    printfn "%d" x.Value
    0
