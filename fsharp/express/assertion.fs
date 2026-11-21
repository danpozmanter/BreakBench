// LEVEL: STD

[<EntryPoint>]
let main argv =
    printfn "before"
    stdout.Flush()
    assert (argv.Length + 1 = 3)
    printfn "after"
    0
