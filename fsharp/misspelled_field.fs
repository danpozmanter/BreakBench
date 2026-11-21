type Config() =
    member val Color = "blue" with get, set

[<EntryPoint>]
let main argv =
    let cfg = Config()
    cfg.Colour <- "red" // BREAK!
    printfn "%s" cfg.Color
    0
