type Order = { Customer: int; Day: int }

[<EntryPoint>]
let main _ =
    let orders = List.init 200 (fun day -> { Customer = day * 7 % 5; Day = day })
    let sorted = List.sortBy (fun o -> o.Customer) orders
    let kept = List.pairwise sorted |> List.forall (fun (a, b) -> a.Customer <> b.Customer || a.Day < b.Day)
    printfn "%s" (if kept then "kept" else "scrambled")
    0
