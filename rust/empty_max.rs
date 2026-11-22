fn main() {
    let xs: Vec<i64> = std::env::args().skip(1).map(|a| a.parse().unwrap()).collect();
    let m = xs.iter().max();
    println!("{}", m + 1); // CONTROL! println!("{}", m.map_or(0, |v| v + 1));
}
