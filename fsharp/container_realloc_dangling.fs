type Item = { mutable Val: int }

[<EntryPoint>]
let main argv =
    let v = ResizeArray [ { Val = 1 } ]
    let r = v.[0]
    for i in 0..999 do
        v.Add { Val = i }
    let w = ResizeArray [ { Val = 7 } ]
    r.Val <- 99
    printfn "%d" w.[0].Val
    0
