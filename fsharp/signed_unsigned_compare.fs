[<EntryPoint>]
let main argv =
    let xs = [ 1; 2; 3 ]
    let i = int argv.[0]
    printfn "%s" (if i < List.length xs then "less" else "not less")
    0
