[<EntryPoint>]
let main _ =
    let grid = Array.create 3 (Array.create 3 0) // CONTROL! let grid = Array.init 3 (fun _ -> Array.create 3 0)
    grid.[0].[0] <- 1
    printfn "%d" (grid |> Array.sumBy (fun row -> row |> Array.filter ((=) 1) |> Array.length))
    0
