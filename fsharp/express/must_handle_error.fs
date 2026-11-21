// LEVEL: LANGUAGE

let save () : Result<unit, string> = Error "disk full"

[<EntryPoint>]
let main _ =
    save () // REJECT!
    match save () with
    | Error _ -> printfn "handled"
    | Ok () -> ()
    0
