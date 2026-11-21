fn main() {
    let qty: Option<i64> = std::env::args().nth(1).and_then(|s| s.parse().ok());
    let present = if qty { true } else { false }; // BREAK!
    // CONTROL! let present = qty.is_some();
    if present {
        println!("have {}", qty.unwrap());
    } else {
        println!("missing");
    }
}
