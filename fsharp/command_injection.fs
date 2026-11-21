open System.Diagnostics
open System.IO
[<EntryPoint>]
let main argv =
    File.Delete "/tmp/bb_pwned"
    let p = Process.Start(ProcessStartInfo("echo", argv.[0], RedirectStandardOutput = true))
    p.WaitForExit()
    printfn "%s" (if File.Exists "/tmp/bb_pwned" then "injected" else "safe")
    0
