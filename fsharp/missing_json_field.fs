open System.Text.Json

type User = { name: string; age: int }

[<EntryPoint>]
let main _ =
    let user = JsonSerializer.Deserialize<User> """{"name": "Ada"}""" // CONTROL! let user = JsonSerializer.Deserialize<User> """{"name": "Ada", "age": 36}"""
    printfn "%d" (user.age + 1)
    0
