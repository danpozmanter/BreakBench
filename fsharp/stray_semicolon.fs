let size n =
    let mutable label = "small"
    if n > 5 then; // CONTROL! if n > 5 then
        label <- "big"
    label

[<EntryPoint>]
let main argv =
    printfn "%s" (size (int argv.[0]))
    printfn "%s" (size (int argv.[1]))
    0
