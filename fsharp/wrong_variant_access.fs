type Value =
    | IntValue of int
    | Text of string

[<EntryPoint>]
let main argv =
    let v = IntValue 42
    let (Text s) = v // CONTROL! match v with Text s -> printfn "%d" s.Length | IntValue _ -> printfn "not text"
    printfn "%d" s.Length // BREAK!
    0
