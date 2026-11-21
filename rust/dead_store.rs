fn main() {
    let price: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let total = price + 2;
    println!("{price}"); // CONTROL! println!("{total}");
}
