fn main() {
    let d: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", 100 / d);
}
