// Rust has no conversion from an integer to an enum; the match below must handle every other value.
#[derive(Debug)]
enum Color {
    Red,
    Green,
    Blue,
}

fn color(n: i64) -> Option<Color> {
    match n {
        0 => Some(Color::Red),
        1 => Some(Color::Green),
        2 => Some(Color::Blue),
        _ => None,
    }
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("before");
    match color(n) {
        Some(c) => println!("{c:?}"),
        None => println!("invalid"),
    }
}
