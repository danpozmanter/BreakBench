let save (path: string) = System.IO.File.WriteAllText(path, "data")

[<EntryPoint>]
let main argv =
    save "/dev/null/out.txt" // CONTROL! try (save "/dev/null/out.txt"; printfn "saved") with :? System.IO.IOException -> printfn "failed"
    printfn "saved" // BREAK!
    0
