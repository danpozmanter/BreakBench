[<EntryPoint>]
let main argv =
    let s = int argv.[0]
    printfn "%d" (1UL <<< s)
    0
