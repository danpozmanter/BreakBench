let gate = obj ()
let mutable balance = 0

let deposit amount = lock gate (fun () -> balance <- balance + amount)

[<EntryPoint>]
let main argv =
    lock gate (fun () -> deposit 10)
    printfn "done"
    0
