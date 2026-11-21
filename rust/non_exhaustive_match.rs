#[derive(Clone, Copy)]
enum Color {
    Red,
    Green,
    Blue,
}

fn name(c: Color) -> &'static str {
    match c {
        Color::Red => "red",
        Color::Green => "green",
        // CONTROL! Color::Blue => "blue",
    }
}

fn main() {
    let i: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let c = [Color::Red, Color::Green, Color::Blue][i];
    println!("{}", name(c));
}
