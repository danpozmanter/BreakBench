// LEVEL: STD

[<EntryPoint>]
let main _ =
    match List.tryItem 5 [ 10; 20; 30 ] with
    | Some v -> printfn "%d" v
    | None -> printfn "none"
    0
