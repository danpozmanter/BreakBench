type Rec() =
    member val Data: byte[] = Array.create 4096 1uy

[<EntryPoint>]
let main argv =
    let n = int64 argv.[0]
    let mutable seen = 0L
    for _ in 1L .. n do
        let r = Rec()
        seen <- seen + int64 r.Data.[0]
    printfn "%s" (if seen = n then "done" else "lost")
    0
