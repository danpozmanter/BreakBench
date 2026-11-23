type User = { Name: string option }

[<EntryPoint>]
let main _ =
    let decoded = { Name = None }
    printfn "%d" decoded.Name.Value.Length
    0
