fn main() {
    let x: f64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let v = x as i64;
    println!("{}", v);
}
