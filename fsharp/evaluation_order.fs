let pair a b = sprintf "%d %d" a b

[<EntryPoint>]
let main _ =
    let n = ref 0
    let next () =
        n.Value <- n.Value + 1
        n.Value
    printfn "%s" (pair (next ()) (next ()))
    0
