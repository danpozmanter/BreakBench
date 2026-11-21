[<CustomEquality; NoComparison>]
type Point =
    { X: int; Y: int; Label: string }
    override this.Equals(o) =
        match o with
        | :? Point as p -> p.X = this.X && p.Y = this.Y
        | _ -> false

[<EntryPoint>]
let main _ =
    let s = System.Collections.Generic.HashSet<Point>([ { X = 1; Y = 2; Label = "a" }; { X = 1; Y = 2; Label = "b" } ])
    printfn "%d" s.Count
    0
