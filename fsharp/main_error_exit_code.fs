open System.IO

[<EntryPoint>]
let main _ =
    match (try Ok(File.ReadAllText "/nonexistent/bb.conf") with e -> Error e) with
    | Ok text ->
        printfn "%d" text.Length
        0
    | Error e ->
        eprintfn "config missing: %s" e.Message // BREAK!
        // CONTROL! eprintfn "config missing: %s" e.Message; 1
