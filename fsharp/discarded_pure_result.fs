[<EntryPoint>]
let main _ =
    let name = "ada"
    name.ToUpper() // BREAK!
    printfn "%s" name // CONTROL! printfn "%s" (name.ToUpper())
    0
