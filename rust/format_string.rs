fn main() {
    let msg = std::env::args().nth(1).unwrap();
    println!(msg); // BREAK!
    // CONTROL! println!("{}", msg);
}
