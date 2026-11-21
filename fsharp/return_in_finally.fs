open System.IO

let writeReport () = raise (IOException "disk full")

let closeLog () = ()

let saveReport () =
    try
        writeReport ()
    finally
        closeLog ()

[<EntryPoint>]
let main argv =
    try
        saveReport ()
        printfn "saved"
    with :? IOException ->
        printfn "failed"
    0
