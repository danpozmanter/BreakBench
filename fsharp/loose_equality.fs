[<EntryPoint>]
let main argv =
    let code = argv.[0]
    printfn "%s" (if code = 0 then "same" else "different") // CONTROL! printfn "%s" (if code = "0" then "same" else "different")
    0
