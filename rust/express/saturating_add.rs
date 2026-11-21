// LEVEL: STD

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", n.saturating_add(1));
}
