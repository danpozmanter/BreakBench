fn is_odd(n: i64) -> bool {
    n % 2 == 1
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", if is_odd(n) { "odd" } else { "even" });
}
