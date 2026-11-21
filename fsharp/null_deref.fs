type User = { Name: string }

let findUser id = if id = 1L then Some { Name = "alice" } else None

[<EntryPoint>]
let main argv =
    let u = findUser (int64 argv.[0])
    printfn "%d" u.Name.Length // BREAK!
    printfn "%A" u
    0
