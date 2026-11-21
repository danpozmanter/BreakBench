[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    System.IO.File.WriteAllText("/tmp/bb_fd.txt", "x")
    for _ in 1..n do
        let f = System.IO.File.OpenRead "/tmp/bb_fd.txt"
        f.ReadByte() |> ignore
    printfn "done"
    0
