// LEVEL: LANGUAGE

enum Color {
    Red,
    Green,
    Blue,
}

fn name(c: Color) -> &'static str {
    match c {
        Color::Red => "red",
        Color::Green => "green",
        Color::Blue => "blue",
    }
}

fn main() {
    let c = Color::Green;
    println!("{}", name(7)); // REJECT!
    println!("{}", name(c));
}
