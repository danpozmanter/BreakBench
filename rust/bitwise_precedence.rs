fn main() {
    let x: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let even = x & 1 == 0; // BREAK!
    // CONTROL! let even = (x & 1) == 0;
    println!("{}", if even { "even" } else { "odd" });
}
