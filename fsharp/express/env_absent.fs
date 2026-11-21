// LEVEL: STD

[<EntryPoint>]
let main _ =
    match System.Environment.GetEnvironmentVariable "BB_UNSET" with
    | null -> printfn "absent"
    | _ -> printfn "present"
    0
