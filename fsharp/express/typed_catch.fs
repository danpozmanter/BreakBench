// LEVEL: LANGUAGE

exception KindA
exception KindB

let step a =
    try
        if a then raise KindA else raise KindB
    with KindA -> printfn "caught A"

[<EntryPoint>]
let main _ =
    step true
    try step false with KindB -> printfn "passed B"
    0
