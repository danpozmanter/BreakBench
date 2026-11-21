[<EntryPoint>]
let main argv =
    let mutable status = "pending"
    if argv.[0] = "ok" then
        let status = "done" // CONTROL! status <- "done"
        eprintfn "status: %s" status
    printfn "%s" status
    0
