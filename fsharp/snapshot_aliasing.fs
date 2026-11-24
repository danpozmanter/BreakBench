let applyUpdate (weights: int[]) =
    weights.[1] <- 5
    weights.[3] <- 0

[<EntryPoint>]
let main argv =
    let weights = [| 3; 3; 3; 3 |]
    let before = weights // CONTROL! let before = Array.copy weights
    applyUpdate weights
    let changes = Seq.zip before weights |> Seq.filter (fun (a, b) -> a <> b) |> Seq.length
    printfn "%d" changes
    0
