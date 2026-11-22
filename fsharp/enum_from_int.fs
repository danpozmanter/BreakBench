type Color =
    | Red = 0
    | Green = 1
    | Blue = 2

[<EntryPoint>]
let main argv =
    printfn "before"
    let c = enum<Color> (int argv.[0])
    printfn "%A" c
    0
