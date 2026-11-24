[<EntryPoint>]
let main argv =
    let d = int argv.[0]
    printfn "%d" (100 / d) // CONTROL! if d = 0 then printfn "cannot divide" else printfn "%d" (100 / d)
    0
