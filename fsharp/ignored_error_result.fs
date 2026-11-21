let save (path: string) = System.IO.File.WriteAllText(path, "data")

[<EntryPoint>]
let main argv =
    save "/nonexistent/dir/out.txt"
    printfn "saved"
    0
