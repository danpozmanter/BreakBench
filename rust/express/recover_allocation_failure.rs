// LEVEL: STD

fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut v: Vec<u8> = Vec::new();
    println!("{}", if v.try_reserve_exact(n).is_err() { "allocation failed" } else { "allocated" });
}
