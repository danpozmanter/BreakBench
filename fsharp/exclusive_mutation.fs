type Account = { mutable Balance: int }

let transfer (from: Account) (dest: Account) amount =
    let newFrom = from.Balance - amount
    let newTo = dest.Balance + amount
    from.Balance <- newFrom
    dest.Balance <- newTo

[<EntryPoint>]
let main _ =
    let a = { Balance = 100 }
    transfer a a 30 // CONTROL! if not (obj.ReferenceEquals(a, a)) then transfer a a 30
    printfn "%d" a.Balance
    0
