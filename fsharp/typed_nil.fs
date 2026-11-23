exception ValidationError of string

let validate (name: string) : exn option =
    let problem = if name = "" then Some(ValidationError "name") else None
    problem

[<EntryPoint>]
let main _ =
    printfn "%s" (if (validate "ada").IsSome then "invalid" else "valid")
    0
