fn main() {
    let s = format!("ab{}", std::env::args().nth(1).unwrap());
    println!("{}", if s == "abc" { "equal" } else { "different" });
}
