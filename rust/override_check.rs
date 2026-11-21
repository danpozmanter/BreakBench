trait Shape {
    fn describe(&self) -> String {
        "shape".to_string()
    }
}

struct Circle;

impl Shape for Circle {
    fn describe(&self) -> String {
        "circle".to_string()
    }
    fn descibe(&self) -> String { "circle".to_string() } // BREAK!
}

fn main() {
    let s: Box<dyn Shape> = Box::new(Circle);
    println!("{}", s.describe());
}
