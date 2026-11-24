enum Shape {
    Circle,
    Square,
}

fn describe(s: Shape) -> &'static str {
    match s {
        _ => "other", // CONTROL! Shape::Circle => "circle",
        Shape::Circle => "circle", // CONTROL! _ => "other",
    }
}

fn main() {
    let _ = Shape::Square;
    println!("{}", describe(Shape::Circle));
}
