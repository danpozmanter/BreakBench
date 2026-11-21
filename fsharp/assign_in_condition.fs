[<EntryPoint>]
let main argv =
    let x = int argv.[0]
    let label = if x = 1 then "one" else "not one"
    printfn "%s" label
    0
