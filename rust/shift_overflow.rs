fn main() {
    let s: u32 = std::env::args().nth(1).unwrap().parse().unwrap();
    let one: u64 = 1;
    println!("{}", one << s); // CONTROL! println!("{}", 1u128 << s);
}
