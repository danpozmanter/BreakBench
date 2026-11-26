[<EntryPoint>]
let main _ =
    let jobs = ResizeArray [ 1; 2; 3 ]
    let takeLast () =
        let last = jobs.[jobs.Count - 1]
        jobs.RemoveAt(jobs.Count - 1)
        last
    assert (takeLast () = 3) // CONTROL! let last = takeLast () in assert (last = 3)
    printfn "%d" jobs.Count
    0
