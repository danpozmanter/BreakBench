// LEVEL: STD

open System.Text.Json

[<EntryPoint>]
let main _ =
    use good = JsonDocument.Parse("""{"port": 8080, "debug": true}""")
    let result =
        try
            JsonDocument.Parse("{port: 8080}").Dispose()
            "valid"
        with :? JsonException -> "invalid"
    printfn "%d %s" (good.RootElement.GetProperty("port").GetInt32()) result
    0
