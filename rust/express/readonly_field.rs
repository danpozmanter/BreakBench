// LEVEL: LANGUAGE

struct Config {
    port: u16,
}

fn main() {
    let c = Config { port: 8080 };
    c.port = 1; // REJECT!
    println!("{}", c.port);
}
