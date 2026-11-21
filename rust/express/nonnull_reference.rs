// LEVEL: LANGUAGE

struct Config {
    name: String,
}

fn main() {
    let c = Config { name: "app".to_string() };
    let _missing: &Config = std::ptr::null(); // REJECT!
    println!("{}", c.name);
}
