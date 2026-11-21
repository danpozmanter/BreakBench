[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    let heads = ResizeArray<byte[]>()
    let prefixes = ResizeArray<string>()
    for i in 0 .. n - 1 do
        let buf = Array.create 32768 (byte i)
        heads.Add buf.[0..15]
        let big = System.String(char (int 'a' + i % 26), 32768)
        prefixes.Add(big.Substring(0, 16))
    printfn "%d" heads.Count
    0
