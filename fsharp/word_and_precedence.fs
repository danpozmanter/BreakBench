[<EntryPoint>]
let main argv =
    let ready = argv.[0] = "yes"
    let approved = argv.[1] = "yes"
    let ok = ready && approved
    printfn "%s" (if ok then "go" else "wait")
    0
