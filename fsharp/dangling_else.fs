[<EntryPoint>]
let main argv =
    let a = int argv.[0] <> 0
    let b = true
    let mutable r = "unset"
    if a then
        if b then r <- "both"
    else
        r <- "not a"
    printfn "%s" r
    0
