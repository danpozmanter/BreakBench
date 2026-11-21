fn add(a: i64, b: i64) -> i64 {
    a + b
}

fn main() {
    let raw = std::env::args().nth(1).unwrap();
    println!("{}", add(raw, 3)); // BREAK!
    println!("{} {}", raw, add(1, 2));
}
