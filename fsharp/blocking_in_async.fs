open System.Diagnostics
open System.Threading
open System.Threading.Tasks

let job () = task { Thread.Sleep 500 } // CONTROL! let job () = task { do! Task.Delay 500 }

[<EntryPoint>]
let main _ =
    let sw = Stopwatch.StartNew()
    Task.WhenAll(job (), job ()).Wait()
    printfn "%s" (if sw.ElapsedMilliseconds < 800L then "concurrent" else "serial")
    0
