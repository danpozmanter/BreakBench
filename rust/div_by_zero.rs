fn main() {
    let d: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", 100 / d); // CONTROL! if d == 0 { println!("cannot divide"); } else { println!("{}", 100 / d); }
}
