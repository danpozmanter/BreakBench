// LEVEL: STD

open System.Diagnostics
open System.Runtime.InteropServices
open System.Threading.Tasks

[<EntryPoint>]
let main _ =
    let done' = TaskCompletionSource()
    use _reg = PosixSignalRegistration.Create(PosixSignal.SIGTERM, fun ctx -> ctx.Cancel <- true; done'.SetResult())
    Process.Start("kill", $"-TERM {System.Environment.ProcessId}").WaitForExit()
    done'.Task.Wait()
    printfn "cleaned up"
    0
