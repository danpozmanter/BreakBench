// LEVEL: STD

open System

[<EntryPoint>]
let main _ =
    let t = DateTime(2026, 3, 29, 1, 30, 0, DateTimeKind.Utc)
    let paris = TimeZoneInfo.FindSystemTimeZoneById "Europe/Paris"
    printfn "%s" ((TimeZoneInfo.ConvertTimeFromUtc(t, paris)).ToString "yyyy-MM-dd HH:mm")
    0
