let limit = base' () * 2L // BREAK!
let baseValue = int64 "10"
let base' () = baseValue
// CONTROL! let limit = base' () * 2L

[<EntryPoint>]
let main _ =
    printfn "%d" limit
    0
