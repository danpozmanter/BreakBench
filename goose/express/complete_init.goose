// LEVEL: LANGUAGE

struct Config { timeout: i64, retries: i64 }

fn main() {
    let c = Config { timeout: 5, retries: 3 };
    let partial = Config { timeout: 5 }; // REJECT!
    print(c.timeout, " ", c.retries);
}
