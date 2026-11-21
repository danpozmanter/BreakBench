// LEVEL: STD

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", n.wrapping_add(1));
}
