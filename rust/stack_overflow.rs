fn walk(n: i64) -> i64 {
    if n == 0 {
        return 0;
    }
    (walk(n - 1) * 31 + n) % 1_000_000_007
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", walk(n));
}
