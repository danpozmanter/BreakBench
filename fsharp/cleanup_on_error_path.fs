open System.IO

let scratch = "/tmp/bb_scratch/export.csv"

let export (rows: string list) =
    File.WriteAllText(scratch, "qty\n")
    for row in rows do
        let qty = int row // BREAK!
        // CONTROL! let qty = match System.Int32.TryParse row with | true, n -> n | _ -> File.Delete scratch; raise (System.FormatException $"invalid row {row}")
        File.AppendAllText(scratch, $"{qty}\n")
    File.Delete scratch

[<EntryPoint>]
let main _ =
    try
        export [ "3"; "x"; "5" ]
    with :? System.FormatException ->
        printfn "export failed"
    0
