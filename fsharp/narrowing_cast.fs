[<EntryPoint>]
let main argv =
    let v = int argv.[0]
    let b = byte v
    printfn "%d" b
    0
