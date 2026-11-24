type User = { Name: string }

[<EntryPoint>]
let main _ =
    let users: User[] = Array.zeroCreate 3
    users.[1] <- { Name = "bob" }
    users.[2] <- { Name = "carol" }
    printfn "%d" users.[0].Name.Length // CONTROL! if obj.ReferenceEquals(users.[0], null) then printfn "missing" else printfn "%d" users.[0].Name.Length
    0
