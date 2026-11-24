[<EntryPoint>]
let main _ =
    let table = [| 10; 20; 30 |]
    printfn "%d" table.[5] // CONTROL! printfn "%d" table.[1]
    0
