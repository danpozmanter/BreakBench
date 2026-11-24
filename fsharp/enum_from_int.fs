// F# models a closed set of cases as a union; it has no conversion from an integer, so the match below handles every other value.
type Color =
    | Red
    | Green
    | Blue

let color n =
    match n with
    | 0 -> Some Red
    | 1 -> Some Green
    | 2 -> Some Blue
    | _ -> None

[<EntryPoint>]
let main argv =
    let n = int argv.[0]
    printfn "before"
    match color n with
    | Some c -> printfn "%A" c
    | None -> printfn "invalid"
    0
