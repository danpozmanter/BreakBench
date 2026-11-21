let rec walk (n: int64) : int64 =
    if n = 0L then 0L else (walk (n - 1L) * 31L + n) % 1_000_000_007L

[<EntryPoint>]
let main argv =
    printfn "%d" (walk (int64 argv.[0]))
    0
