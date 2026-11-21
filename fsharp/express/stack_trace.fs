// LEVEL: STD

open System.Diagnostics
open System.Runtime.CompilerServices

[<MethodImpl(MethodImplOptions.NoInlining)>]
let inner () = StackTrace().ToString()

[<EntryPoint>]
let main _ =
    printfn "%s" (if inner().Contains "inner" then "inner" else "missing")
    0
