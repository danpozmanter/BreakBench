type IntBox = { mutable Value: int }

let make () =
    let local = { Value = 4242 }
    local

let clobber () = (Array.create 64 7).[63]

[<EntryPoint>]
let main argv =
    let r = make ()
    clobber () |> ignore
    printfn "%d" r.Value
    0
