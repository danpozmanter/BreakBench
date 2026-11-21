struct Config {
    color: String,
}

fn main() {
    let mut cfg = Config { color: "blue".to_string() };
    cfg.colour = "red".to_string(); // BREAK!
    cfg.color.push('!');
    println!("{}", cfg.color);
}
