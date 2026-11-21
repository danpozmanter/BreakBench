// LEVEL: LANGUAGE

enum Shape {
    Circle(f64),
    Square(f64),
}

fn name(s: &Shape) -> &'static str {
    match s {
        Shape::Circle(_) => "circle",
        Shape::Square(_) => "square",
    }
}

fn bad(s: &Shape) -> &'static str { match s { Shape::Circle(_) => "circle" } } // REJECT!

fn main() {
    let _ = Shape::Square(2.0);
    println!("{}", name(&Shape::Circle(1.0)));
}
