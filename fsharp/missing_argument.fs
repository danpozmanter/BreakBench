let area w h = w * h

[<EntryPoint>]
let main argv =
    printfn "%d" (area 3) // BREAK!
    printfn "%d" (area 3 4)
    0
