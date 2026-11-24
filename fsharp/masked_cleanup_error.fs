open System
open System.IO

type Report() =
    member _.Write(_text: string) : unit = raise (IOException "disk full")

    interface IDisposable with
        member _.Dispose() = raise (IOException "close failed")

let save () =
    use report = new Report() // CONTROL! let report = new Report()
    report.Write "totals" // CONTROL! (try report.Write "totals" with _ -> (try (report :> IDisposable).Dispose() with :? IOException -> ()); reraise ()); (report :> IDisposable).Dispose()

[<EntryPoint>]
let main _ =
    try
        save ()
    with :? IOException as error ->
        printfn "%s" error.Message
    0
