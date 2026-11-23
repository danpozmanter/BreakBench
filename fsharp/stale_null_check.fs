type User = { Name: string }
type Session = { mutable User: User option }

let logout (session: Session) = session.User <- None

[<EntryPoint>]
let main _ =
    let session = { User = Some { Name = "alice" } }
    match session.User with
    | Some user ->
        logout session
        printfn "%d" user.Name.Length
    | None -> ()
    0
