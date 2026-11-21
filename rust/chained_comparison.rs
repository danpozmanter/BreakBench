fn main() {
    let x: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let inside = 1 < x < 3; // BREAK!
    // CONTROL! let inside = 1 < x && x < 3;
    println!("{}", if inside { "inside" } else { "outside" });
}
