type Cart =
    static member AddItem(item: string, ?cart: ResizeArray<string>) =
        let c = defaultArg cart (ResizeArray<string>())
        c.Add item
        c

[<EntryPoint>]
let main argv =
    Cart.AddItem("x") |> ignore
    let b = Cart.AddItem("y")
    printfn "%d" b.Count
    0
