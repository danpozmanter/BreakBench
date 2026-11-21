type Value =
    | IntValue of int
    | Text of string

[<EntryPoint>]
let main argv =
    let v = IntValue 42
    let (Text s) = v
    printfn "%d" s.Length
    0
