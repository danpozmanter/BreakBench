use std::num::ParseIntError;

fn parse_order(line: &str) -> Result<i64, ParseIntError> {
    let parts: Vec<&str> = line.split(',').collect();
    parts[2].parse() // BREAK!
    // CONTROL! parts[1].parse()
}

fn main() {
    match parse_order("widget,5") {
        Ok(qty) => println!("{qty}"),
        Err(_) => println!("invalid order"),
    }
}
