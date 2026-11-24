fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap(); // CONTROL! let n: Option<i64> = std::env::args().nth(1).unwrap().parse().ok();
    println!("{}", n + 1); // CONTROL! match n { Some(n) => println!("{}", n + 1), None => println!("invalid") }
}
