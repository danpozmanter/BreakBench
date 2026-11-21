type Mover =
    static member Move(dx: int, dy: int) = printfn "%d %d" dx dy

[<EntryPoint>]
let main _ =
    Mover.Move(4, 3)
    0
