// LEVEL: STD

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", if n.checked_add(1).is_none() { "overflow" } else { "ok" });
}
