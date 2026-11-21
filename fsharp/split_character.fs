[<EntryPoint>]
let main argv =
    let name = "a👍b"
    let n = int argv.[0]
    printfn "%s" (name.Substring(0, n))
    0
