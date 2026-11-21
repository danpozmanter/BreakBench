enum Shape {
    Circle,
    Square,
}

fn describe(s: Shape) -> &'static str {
    match s {
        _ => "other",
        Shape::Circle => "circle",
    }
}

fn main() {
    let _ = Shape::Square;
    println!("{}", describe(Shape::Circle));
}
