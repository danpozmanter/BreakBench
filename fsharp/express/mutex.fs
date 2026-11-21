// LEVEL: STD

open System.Threading

[<EntryPoint>]
let main _ =
    let gate = obj ()
    let mutable counter = 0L
    let work () = for _ in 1 .. 100000 do lock gate (fun () -> counter <- counter + 1L)
    let a = Thread(work)
    let b = Thread(work)
    a.Start(); b.Start(); a.Join(); b.Join()
    printfn "%d" counter
    0
