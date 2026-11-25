open System.Text.Json

[<EntryPoint>]
let main argv =
    let count = int argv.[0]
    let mean = 0.0 / float count
    printfn "%s" (JsonSerializer.Serialize {| mean = mean |}) // CONTROL! try printfn "%s" (JsonSerializer.Serialize {| mean = mean |}) with :? System.ArgumentException -> printfn "refused"
    0
