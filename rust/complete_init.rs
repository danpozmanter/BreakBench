struct Config {
    timeout: u32,
    retries: u32,
}

fn main() {
    let c = Config { timeout: 5, retries: 3 };
    let _partial = Config { timeout: 5 }; // BREAK!
    println!("{} {}", c.timeout, c.retries);
}
