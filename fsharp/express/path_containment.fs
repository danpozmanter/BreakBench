// LEVEL: STD

open System.IO

[<EntryPoint>]
let main _ =
    let p = Path.GetFullPath(Path.Combine("/srv/app", "../../etc/passwd"))
    printfn "%s" (if p.StartsWith "/srv/app/" then "inside" else "outside")
    0
