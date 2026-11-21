enum Shape { Circle, Square }

fn describe(s: Shape) -> const u8[:] {
    return match s { Circle => "circle", _ => "other" };
}

fn bad(s: Shape) -> const u8[:] { return match s { _ => "other", Circle => "circle" }; } // BREAK!

fn main() {
    print(bad(Shape.Square)); // BREAK!
    print(describe(Shape.Square));
}
