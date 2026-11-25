trait Shape {
    fn area(&self) -> i64 {
        0
    }
    fn describe(&self) -> String {
        format!("area {}", self.area())
    }
}

struct Square;

impl Shape for Square {
    fn area(&self) -> i64 {
        4
    }
}

fn main() {
    println!("{}", Square.describe());
}
