open System.Text

[<EntryPoint>]
let main argv =
    let counts = Array.zeroCreate<int> 256
    for b in Encoding.UTF8.GetBytes(argv.[0]) do
        counts.[int b] <- counts.[int b] + 1
    printfn "%d" (Array.sum counts.[128..])
    0
