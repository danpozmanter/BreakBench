[<EntryPoint>]
let main argv =
    let xs = argv |> Array.map int64
    printfn "%d" (Array.max xs + 1L) // CONTROL! if xs.Length = 0 then printfn "no readings" else printfn "%d" (Array.max xs + 1L)
    0
