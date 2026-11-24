[<EntryPoint>]
let main argv =
    let s = int argv.[0]
    printfn "%d" (1UL <<< s) // CONTROL! printfn "%s" ((bigint 1 <<< s).ToString())
    0
