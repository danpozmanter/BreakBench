// LEVEL: LANGUAGE

type Shape() =
    abstract Describe: unit -> string
    default _.Describe() = "shape"

type Circle() =
    inherit Shape()
    override _.Describe() = "circle"
    override _.Descibe() = "circle" // REJECT!

[<EntryPoint>]
let main _ =
    let s: Shape = Circle()
    printfn "%s" (s.Describe())
    0
