open System.Diagnostics
open System.Text

[<EntryPoint>]
let main _ =
    let info = ProcessStartInfo("sh", [ "-c"; "printf HELLO-WO; sleep 0.2; printf RLD-1234" ], RedirectStandardOutput = true)
    use child = Process.Start info
    let message = Array.zeroCreate<byte> 16
    child.StandardOutput.BaseStream.ReadExactly(message, 0, message.Length)
    child.WaitForExit()
    printfn "%s" (Encoding.UTF8.GetString message)
    0
