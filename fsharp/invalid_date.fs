open System

[<EntryPoint>]
let main argv =
    let date = DateOnly(int argv.[0], int argv.[1], int argv.[2]) // BREAK!
    printfn "%s" (date.ToString("yyyy-MM-dd")) // BREAK!
    // CONTROL! try printfn "%s" (DateOnly(int argv.[0], int argv.[1], int argv.[2]).ToString("yyyy-MM-dd")) with :? ArgumentOutOfRangeException -> printfn "invalid"
    0
