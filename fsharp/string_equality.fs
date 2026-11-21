[<EntryPoint>]
let main argv =
    let s = "ab" + argv.[0]
    printfn "%s" (if s = "abc" then "equal" else "different")
    0
