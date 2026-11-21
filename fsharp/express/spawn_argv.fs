// LEVEL: STD

open System.Diagnostics

[<EntryPoint>]
let main _ =
    let psi = ProcessStartInfo("echo", RedirectStandardOutput = true)
    psi.ArgumentList.Add "hi; touch /tmp/bb_x"
    use p = Process.Start psi
    printf "%s" (p.StandardOutput.ReadToEnd())
    p.WaitForExit()
    0
