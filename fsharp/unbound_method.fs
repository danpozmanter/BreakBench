type Counter() =
    member val Count = 0 with get, set
    member this.Increment() = this.Count <- this.Count + 1

let runTwice (f: unit -> unit) =
    f ()
    f ()

[<EntryPoint>]
let main _ =
    let counter = Counter()
    runTwice counter.Increment
    printfn "%d" counter.Count
    0
