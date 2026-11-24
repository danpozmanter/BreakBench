[<EntryPoint>]
let main _ =
    let span = 1_000_000_000L * 60L * 60L * 24L * 365L * 300L // CONTROL! let span = 1_000_000_000UL * 60UL * 60UL * 24UL * 365UL * 300UL
    printfn "%d" span
    0
