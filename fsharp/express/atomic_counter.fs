// LEVEL: STD

open System.Threading

[<EntryPoint>]
let main _ =
    let counter = ref 0L
    let work () = for _ in 1 .. 100000 do Interlocked.Increment(&counter.contents) |> ignore
    let a = Thread(work)
    let b = Thread(work)
    a.Start(); b.Start(); a.Join(); b.Join()
    printfn "%d" counter.Value
    0
