open System.Threading.Tasks

let gate = obj ()
let mutable balance = 100

let withdraw amount =
    task {
        if balance >= amount then
            do! Task.Delay 10
            lock gate (fun () -> balance <- balance - amount)
    }

[<EntryPoint>]
let main _ =
    Task.WhenAll(withdraw 80, withdraw 80).Wait()
    printfn "%d" balance
    0
