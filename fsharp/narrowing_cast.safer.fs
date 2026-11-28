[<EntryPoint>]
let main argv =
    let v = int argv.[0]
    let b = Checked.byte v // CONTROL! let b = if v < 0 || v > 255 then 0uy else byte v
    printfn "%d" b // CONTROL! if v < 0 || v > 255 then printfn "out of range" else printfn "%d" b
    0
