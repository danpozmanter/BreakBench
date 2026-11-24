fn main() {
    // parse answers a Result, so the number is reached only through a check.
    match std::env::args().nth(1).unwrap().parse::<i64>() {
        Ok(n) => println!("{}", n + 1),
        Err(_) => println!("invalid"),
    }
}
