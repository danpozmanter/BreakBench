// LEVEL: LANGUAGE

let work () =
    try failwith "boom" finally printfn "cleanup"

[<EntryPoint>]
let main _ =
    try work () with _ -> printfn "recovered"
    0
