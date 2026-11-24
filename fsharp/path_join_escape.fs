
[<EntryPoint>]
let main argv =
    let joined = System.IO.Path.Combine("/srv/app/uploads", argv.[0]) // CONTROL! let joined = System.IO.Path.Combine("/srv/app/uploads", argv.[0].TrimStart('/'))
    printfn "%s" (if joined.StartsWith "/srv/app/uploads/" then "inside" else "escaped")
    0
