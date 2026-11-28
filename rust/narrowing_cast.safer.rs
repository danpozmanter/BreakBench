fn main() {
    let v: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    match u8::try_from(v) {
        Ok(b) => println!("{}", b),
        Err(_) => println!("out of range"),
    }
}
