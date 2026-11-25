fn main() {
    let code = std::env::args().nth(1).unwrap();
    println!("{}", if code == 0 { "same" } else { "different" }); // CONTROL! println!("{}", if code == "0" { "same" } else { "different" });
}
