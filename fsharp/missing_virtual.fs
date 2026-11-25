type Shape() =
    member _.Area() = 0 // BREAK!
    // CONTROL! abstract Area: unit -> int
    // CONTROL! default _.Area() = 0
    member this.Describe() = $"area {this.Area()}"

type Square() =
    inherit Shape()
    member _.Area() = 4 // CONTROL! override _.Area() = 4

[<EntryPoint>]
let main _ =
    printfn "%s" (Square().Describe())
    0
