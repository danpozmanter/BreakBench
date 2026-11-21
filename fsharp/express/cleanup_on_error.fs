// LEVEL: LANGUAGE

let resource () = { new System.IDisposable with member _.Dispose() = printfn "released" }

let useIt fail =
    use _r = resource ()
    if fail then failwith "bad"

[<EntryPoint>]
let main _ =
    useIt false
    try useIt true with _ -> ()
    0
