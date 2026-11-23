open System.Threading

let gate = obj ()
let ready = Barrier(2)
let mutable claimed = false
let mutable winners = 0

let claim () =
    let mutable available = false
    lock gate (fun () -> available <- not claimed) // BREAK!
    // CONTROL! lock gate (fun () -> available <- not claimed; if available then claimed <- true)
    ready.SignalAndWait() |> ignore
    if available then lock gate (fun () -> claimed <- true; winners <- winners + 1)

[<EntryPoint>]
let main _ =
    let a = Thread(ThreadStart claim)
    let b = Thread(ThreadStart claim)
    a.Start(); b.Start(); a.Join(); b.Join()
    printfn "%d" winners
    0
