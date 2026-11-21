// LEVEL: LANGUAGE

enum Shape {
    Circle { r: f64 },
    Square { side: f64 },
}

fn name(s: Shape) -> const u8[:] {
    return match s {
        Circle => "circle",
        Square => "square",
    };
}

fn bad(s: Shape) -> const u8[:] { return match s { Circle => "circle", }; } // REJECT!

fn main() {
    print(bad(Shape.Circle { r: 1.0 })); // REJECT!
    print(name(Shape.Circle { r: 1.0 }));
}
