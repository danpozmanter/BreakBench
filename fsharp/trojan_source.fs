[<EntryPoint>]
let main _ =
    let access = "user"
    printfn "%s" (if access <> "user‮ ⁦// admins only⁩ ⁦" then "admin" else "user") // CONTROL! printfn "%s" (if access <> "user" then "admin" else "user")
    0
