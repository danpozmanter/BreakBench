fn walk(n: i64) -> i64 {
    if n == 0 {
        return 0;
    }
    (walk(n - 1) * 31 + n) % 1_000_000_007
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", walk(n)); // CONTROL! let mut acc: i64 = 0; for i in 1..=n { acc = (acc * 31 + i) % 1_000_000_007; } println!("{}", acc);
}
