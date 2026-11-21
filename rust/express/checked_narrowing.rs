// LEVEL: STD

fn main() {
    let v: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", if u8::try_from(v).is_err() { "does not fit" } else { "fits" });
}
