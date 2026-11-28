[<EntryPoint>]
let main argv =
    let line = argv.[0]
    let pos = Seq.tryFindIndex ((=) ':') line // CONTROL! let pos = line.IndexOf(':')
    printfn "%s" (line.Substring(pos + 1)) // CONTROL! printfn "%s" (if pos < 0 then "no colon" else line.Substring(pos + 1))
    0
