let processRequest (request: string) (id: int) =
    let buf = Array.zeroCreate<byte> 4096
    System.Text.Encoding.UTF8.GetBytes(sprintf "%s#%d" request id).CopyTo(buf, 0)
    if buf.[0] <> byte '{' then invalidArg "request" "invalid request"

[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    let mutable failures = 0
    for i in 0 .. n - 1 do
        try
            processRequest "not json" i
        with :? System.ArgumentException ->
            failures <- failures + 1
    printfn "%s" (if failures = n then "done" else "unexpected")
    0
