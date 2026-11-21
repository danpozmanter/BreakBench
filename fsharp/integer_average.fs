[<EntryPoint>]
let main argv =
    let values = [ 3; 4 ]
    let sum = List.sum values
    let count = List.length values
    let avg: float = sum / count // BREAK!
    // CONTROL! let avg: float = float sum / float count
    printfn "%.1f" avg
    0
