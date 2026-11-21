[<EntryPoint>]
let main _ =
    let mutable greeting = "hello"
    greeting.[0] <- 'j' // CONTROL! greeting <- "j" + greeting.Substring(1)
    printfn "%s" greeting
    0
