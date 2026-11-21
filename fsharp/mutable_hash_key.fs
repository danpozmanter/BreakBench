open System.Collections.Generic

[<EntryPoint>]
let main _ =
    let seen = HashSet<int list>()
    let mutable key = [ 1; 2 ]
    seen.Add key |> ignore
    key <- List.updateAt 0 9 key
    for e in seen do
        printfn "%s" (if seen.Contains e then "found" else "lost")
    0
