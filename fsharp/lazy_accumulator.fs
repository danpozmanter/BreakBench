open System.IO

[<EntryPoint>]
let main argv =
    let count = int64 argv[0]
    let mutable total = 0L
    use source = File.OpenRead "/dev/zero"
    for _ in 1L .. count do
        let message = Array.zeroCreate<byte> 4096
        source.ReadExactly message
        total <- total + int64 message.Length
    printfn "%d" total
    0
