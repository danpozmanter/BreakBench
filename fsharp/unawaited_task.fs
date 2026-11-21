open System.Collections.Generic
open System.Threading.Tasks

let save (store: List<int>) =
    task {
        do! Task.Delay 50
        lock store (fun () -> store.Add 1)
    }

[<EntryPoint>]
let main argv =
    let store = List<int>()
    save store // CONTROL! (save store).Wait()
    printfn "%d" store.Count
    0
