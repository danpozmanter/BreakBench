open System.IO

let lock = "/tmp/bb_scratch/reader.lock"

let rows () =
    seq {
        File.WriteAllText(lock, "")
        try
            yield "alpha"
            yield "beta"
            yield "gamma"
        finally
            File.Delete lock
    }

[<EntryPoint>]
let main _ =
    printfn "%s" (Seq.head (rows ()))
    0
