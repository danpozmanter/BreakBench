open System.IO

let lock = "/tmp/bb_scratch/run.lock"

let checkArgs (args: string array) =
    if Array.contains "--version" args then
        printfn "1.0"
        exit 0 // BREAK!
        // CONTROL! true
    else
        false

[<EntryPoint>]
let main args =
    File.WriteAllText(lock, "")
    try
        if not (checkArgs args) then printfn "working"
    finally
        File.Delete lock
    0
