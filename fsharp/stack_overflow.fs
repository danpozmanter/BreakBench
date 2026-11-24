let rec walk (n: int64) : int64 =
    if n = 0L then 0L else (walk (n - 1L) * 31L + n) % 1_000_000_007L

[<EntryPoint>]
let main argv =
    printfn "%d" (walk (int64 argv.[0])) // CONTROL! let n = int64 argv.[0]
    // CONTROL! let mutable acc = 0L
    // CONTROL! let mutable i = 1L
    // CONTROL! while i <= n do acc <- (acc * 31L + i) % 1_000_000_007L; i <- i + 1L
    // CONTROL! printfn "%d" acc
    0
