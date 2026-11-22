[<EntryPoint>]
let main argv =
    let line = argv.[0]
    let pos = line.IndexOf(':')
    printfn "%s" (line.Substring(pos + 1))
    0
