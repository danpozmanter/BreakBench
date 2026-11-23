let isAdmin (user: string) = user = "root"
let isАdmin (_user: string) = true // BREAK!

[<EntryPoint>]
let main _ =
    let user = "guest"
    printfn "%s" (if isAdmin "root" then "admin" else "guest")
    printfn "%s" (if isАdmin user then "admin" else "guest") // CONTROL! printfn "%s" (if isAdmin user then "admin" else "guest")
    0
