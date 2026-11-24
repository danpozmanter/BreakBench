[<EntryPoint>]
let main _ =
    let table = [| 10; 20; 30 |] // CONTROL! let table = [| 10; 20; 30; 40 |]
    printfn "%d" table.[3]
    0
