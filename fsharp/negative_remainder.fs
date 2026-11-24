let isOdd (n: int64) = n % 2L = 1L // CONTROL! let isOdd (n: int64) = n % 2L <> 0L

[<EntryPoint>]
let main argv =
    printfn "%s" (if isOdd (int64 argv.[0]) then "odd" else "even")
    0
