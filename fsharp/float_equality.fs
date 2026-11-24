[<EntryPoint>]
let main argv =
    let x = float argv.[0]
    let y = float argv.[1]
    let a = x + y
    printfn "%s" (if a = 0.3 then "equal" else "not equal") // CONTROL! printfn "%s" (if abs (a - 0.3) < 1e-9 then "equal" else "not equal")
    0
