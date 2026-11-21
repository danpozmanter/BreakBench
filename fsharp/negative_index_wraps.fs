[<EntryPoint>]
let main argv =
    let readings = [| 10; 20; 30 |]
    let i = int argv.[0]
    printfn "%d" (readings.[i] - readings.[i - 1])
    0
