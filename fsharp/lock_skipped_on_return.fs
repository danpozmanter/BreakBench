open System.Threading

let gate = obj ()
let mutable balance = 100

// F# has no early return; the unlock follows the conditional on every path.
let withdraw amount =
    Monitor.Enter gate
    if amount <= balance then balance <- balance - amount
    Monitor.Exit gate

[<EntryPoint>]
let main _ =
    withdraw 500
    let worker = Thread(fun () -> withdraw 30)
    worker.Start()
    worker.Join()
    printfn "%d" balance
    0
