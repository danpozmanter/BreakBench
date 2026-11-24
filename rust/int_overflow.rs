fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", n + 1); // CONTROL! println!("{}", n as i128 + 1);
}
