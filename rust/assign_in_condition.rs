fn main() {
    let mut x: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let label = if x = 1 { "one" } else { "not one" }; // BREAK!
    // CONTROL! let label = if x == 1 { "one" } else { "not one" };
    x += 0;
    println!("{} {}", label, x);
}
