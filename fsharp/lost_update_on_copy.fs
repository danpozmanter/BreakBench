type Account = { mutable Balance: int }

[<EntryPoint>]
let main argv =
    let accounts = [ { Balance = 100 } ]
    for acct in accounts do
        acct.Balance <- acct.Balance + 50
    printfn "%d" accounts.[0].Balance
    0
