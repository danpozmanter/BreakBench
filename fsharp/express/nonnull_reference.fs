// LEVEL: LANGUAGE

type Config = { Name: string }

[<EntryPoint>]
let main _ =
    let c = { Name = "app" }
    let missing: Config = null // REJECT!
    printfn "%s" c.Name
    0
