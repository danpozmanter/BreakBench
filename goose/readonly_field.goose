struct Config { port: i64 }

fn main() {
    let c = Config { port: 8080 };
    c.port = 1; // BREAK!
    print(c.port);
}
