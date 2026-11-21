[<EntryPoint>]
let main argv =
    let ids = [ 10; 20; 30 ]
    let id = argv.[0]
    printfn "%s" (if List.contains id ids then "found" else "missing") // CONTROL! printfn "%s" (if List.contains (int id) ids then "found" else "missing")
    0
