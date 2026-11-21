// LEVEL: STD

let parsePort (s: string) : Result<int, string> =
    match System.Int32.TryParse s with
    | true, p -> Ok p
    | _ -> Error "not a number"

[<EntryPoint>]
let main _ =
    match parsePort "x" with
    | Ok p -> printfn "%d" p
    | Error _ -> printfn "error"
    0
