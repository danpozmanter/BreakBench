open System.Threading.Tasks

let gate = obj ()
let mutable balance = 100

let withdraw amount =
    task {
        if balance >= amount then
            do! Task.Delay 10 // CONTROL! lock gate (fun () -> balance <- balance - amount)
            lock gate (fun () -> balance <- balance - amount) // CONTROL! do! Task.Delay 10
    }

[<EntryPoint>]
let main _ =
    Task.WhenAll(withdraw 80, withdraw 80).Wait()
    printfn "%d" balance
    0
