fn main() {
    let v: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    // CONTROL! if !(0..=255).contains(&v) { println!("out of range"); return; }
    let b = v as u8;
    println!("{}", b);
}
