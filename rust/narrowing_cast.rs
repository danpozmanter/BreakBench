fn main() {
    let v: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let b = v as u8;
    println!("{}", b);
}
