// LEVEL: STD

open System
open System.Runtime.CompilerServices

[<MethodImpl(MethodImplOptions.NoInlining)>]
let make () = WeakReference<obj>(obj ())

[<EntryPoint>]
let main _ =
    let weak = make ()
    GC.Collect()
    GC.WaitForPendingFinalizers()
    printfn "%s" (match weak.TryGetTarget() with | true, _ -> "alive" | _ -> "gone")
    0
