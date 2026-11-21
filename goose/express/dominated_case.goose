// LEVEL: LANGUAGE

enum Shape { Circle, Square }

fn describe(s: Shape) -> const u8[:] {
    return match s { Circle => "circle", _ => "other" };
}

fn bad(s: Shape) -> const u8[:] { return match s { _ => "other", Circle => "circle" }; } // REJECT!

fn main() {
    print(bad(Shape.Square)); // REJECT!
    print(describe(Shape.Square));
}
