open System.Text.Json.Nodes

[<EntryPoint>]
let main argv =
    let depth = int argv.[0]
    JsonNode.Parse(String.replicate depth "[" + String.replicate depth "]") |> ignore // CONTROL! if depth > 1000 then printfn "refused"; exit 0
    printfn "parsed"
    0
