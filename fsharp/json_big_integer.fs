open System.Text.Json.Nodes

[<EntryPoint>]
let main _ =
    let event = JsonNode.Parse """{"id": 9007199254740993}"""
    printfn "%O" event["id"]
    0
