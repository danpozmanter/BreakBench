// LEVEL: STD

fn main() {
    let s = std::env::args().nth(1).unwrap();
    println!("{}", if s.parse::<i64>().is_err() { "invalid" } else { "valid" });
}
