let findName id = if id = 1L then Some "alice" else None

[<EntryPoint>]
let main argv =
    let name = findName (int64 argv.[0])
    printfn $"hello, {name}" // CONTROL! printfn "hello, %s" (Option.defaultValue "nobody" name)
    0
